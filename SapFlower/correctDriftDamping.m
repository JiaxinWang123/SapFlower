function [ssCorr, qc, info] = correctDriftDamping(ss, installIdx, cfg)
% correctDriftDamping  Long-term drift and signal-damping correction for TDM ΔT.
%
%   [ssCorr, qc, info] = correctDriftDamping(ss, installIdx, cfg)
%
%   Implements the moving-window Z-score / reference-window de-normalization
%   described in Hata & Kumagai (2026), fluxfixer §2.1.5, with the reference
%   window recomputed at each sensor (re)installation so a mid-record probe
%   replacement does not bias the corrected mean (see Fig. 3 in that paper).
%
%   The transform is:
%       Z(t)     = (ΔT(t) − μ_mw(t)) / σ_mw(t)
%       ΔT'(t)  = Z(t)·σ* + μ*
%   where μ_mw, σ_mw are centered moving-window statistics and μ*, σ* come
%   either from the reference window (post-install, fluxfixer default) or
%   from the moving window, depending on cfg.zsMode:
%
%       'detrend' : μ* = μ_ref,    σ* = σ_mw(t)   removes long-term mean drift
%       'damping' : μ* = μ_mw(t),  σ* = σ_ref     restores original amplitude
%       'both'    : μ* = μ_ref,    σ* = σ_ref     does both (default)
%
%   The reference window for a segment is the first `zsRefDays` of *valid*
%   data after the install index (NaN samples are skipped), so the routine
%   tolerates gaps at the start of the record. The validity threshold
%   (cfg.zsMinRefSamples) is loose by default; set it higher to demand more
%   evidence before applying a correction.
%
%   Inputs:
%     ss          1xN ΔT time series (deg C); NaN allowed.
%     installIdx  Indices marking sensor (re)installs. Pass [] for a single
%                 install at sample 1; the function sorts and prepends 1
%                 if missing.
%     cfg         Struct with fields:
%                   .Timestep        minutes per sample (REQUIRED)
%                   .zsWindowDays    moving window width, days (default 15)
%                   .zsRefDays       reference window width, days (default 15)
%                   .zsMode          'detrend'|'damping'|'both' (default 'both')
%                   .zsMinRefSamples min # of valid samples required in the
%                                    reference window before a segment is
%                                    accepted (default max(24, 0.05*refN);
%                                    24 = 6 h at 15-min cadence)
%
%   Outputs:
%     ssCorr  Corrected ΔT (same shape as ss). Samples that could not be
%             corrected (e.g. σ_mw undefined in their window) are left equal
%             to ss.
%     qc      1xN flag: 0 = unchanged, 1 = drift/damping corrected,
%                       2 = segment skipped (reference window unusable).
%     info    Diagnostics struct:
%               .nSegments      number of (re)install segments processed
%               .corrected      count of samples with qc==1
%               .skipped        count of samples with qc==2
%               .pctValid       fraction of ss that is non-NaN
%               .pctZValid      fraction of Z that is non-NaN (after movstd)
%               .segments       struct array, one per segment, with fields
%                               .a .b .nValid .refUsed .mu_ref .sd_ref
%                               .nCorrected .status ('ok'|'few-valid'|'zero-sigma')

    % --- defaults --------------------------------------------------------
    if ~isfield(cfg, 'Timestep')
        error('correctDriftDamping:NoTimestep', ...
              'cfg.Timestep (minutes/sample) is required.');
    end
    if ~isfield(cfg, 'zsWindowDays'), cfg.zsWindowDays = 15;     end
    if ~isfield(cfg, 'zsRefDays'),    cfg.zsRefDays    = 15;     end
    if ~isfield(cfg, 'zsMode'),       cfg.zsMode       = 'both'; end

    N = numel(ss);
    if isempty(installIdx), installIdx = 1; end
    installIdx = installIdx(installIdx >= 1 & installIdx <= N);
    installIdx = unique([1, installIdx(:)']);

    spd  = round(24*60 / cfg.Timestep);
    win  = max(3, round(cfg.zsWindowDays * spd));
    refN = max(3, round(cfg.zsRefDays    * spd));

    if isfield(cfg, 'zsMinRefSamples') && ~isempty(cfg.zsMinRefSamples)
        minRefSamples = cfg.zsMinRefSamples;
    else
        minRefSamples = max(24, round(0.05 * refN));
    end

    % --- moving-window Z-score ------------------------------------------
    mu_mw = movmean(ss, win, 'omitnan');
    sd_mw = movstd (ss, win, 'omitnan');
    sd_mw(sd_mw < eps) = NaN;
    z = (ss - mu_mw) ./ sd_mw;

    ssCorr = ss;
    qc     = zeros(1, N);

    info = struct();
    info.nSegments = numel(installIdx);
    info.pctValid  = mean(~isnan(ss));
    info.pctZValid = mean(~isnan(z));
    info.segments  = repmat(struct( ...
        'a', 0, 'b', 0, 'nValid', 0, 'refUsed', 0, ...
        'mu_ref', NaN, 'sd_ref', NaN, ...
        'nCorrected', 0, 'status', ''), 1, info.nSegments);

    segStart = [installIdx, N + 1];

    for k = 1:numel(segStart) - 1
        a = segStart(k);
        b = segStart(k + 1) - 1;
        info.segments(k).a = a;
        info.segments(k).b = b;

        % Reference window = first refN VALID samples within the segment.
        segValid = find(~isnan(ss(a:b))) + (a - 1);
        nValid   = numel(segValid);
        info.segments(k).nValid = nValid;

        if nValid < minRefSamples
            qc(a:b) = 2;
            info.segments(k).status = sprintf('few-valid (%d<%d)', ...
                nValid, minRefSamples);
            continue
        end

        refIdx = segValid(1:min(refN, nValid));
        refSeg = ss(refIdx);
        info.segments(k).refUsed = numel(refIdx);
        mu_ref = mean(refSeg);   % already non-NaN
        sd_ref = std (refSeg);
        info.segments(k).mu_ref = mu_ref;
        info.segments(k).sd_ref = sd_ref;

        if ~(sd_ref > eps)
            qc(a:b) = 2;
            info.segments(k).status = 'zero-sigma';
            continue
        end

        seg = a:b;
        switch lower(cfg.zsMode)
            case 'detrend'
                rec = z(seg) .* sd_mw(seg) + mu_ref;
            case 'damping'
                rec = z(seg) .* sd_ref     + mu_mw(seg);
            case 'both'
                rec = z(seg) .* sd_ref     + mu_ref;
            otherwise
                error('correctDriftDamping:BadMode', ...
                      'Unknown cfg.zsMode "%s".', cfg.zsMode);
        end

        keep = ~isnan(rec);
        ssCorr(seg(keep)) = rec(keep);

        changed = keep & ~isnan(ss(seg)) & ...
                  abs(ssCorr(seg) - ss(seg)) > 1e-9;
        qc(seg(changed)) = 1;

        info.segments(k).nCorrected = sum(changed);
        info.segments(k).status = 'ok';
    end

    info.corrected = sum(qc == 1);
    info.skipped   = sum(qc == 2);
end
