function [ssCorr, qc] = correctDriftDamping(ss, installIdx, cfg)
% correctDriftDamping  Long-term drift and signal-damping correction for TDM ΔT.
%
%   [ssCorr, qc] = correctDriftDamping(ss, installIdx, cfg)
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
%   Inputs:
%     ss          1xN ΔT time series (deg C); NaN allowed.
%     installIdx  Indices marking sensor (re)installs. Pass [] for a single
%                 install at sample 1; the function will sort and prepend 1
%                 if missing.
%     cfg         Struct with fields:
%                   .Timestep      minutes per sample (REQUIRED)
%                   .zsWindowDays  moving window width, days (default 15)
%                   .zsRefDays     reference window width, days (default 15)
%                   .zsMode        'detrend'|'damping'|'both' (default 'both')
%
%   Outputs:
%     ssCorr  Corrected ΔT (same shape as ss). Where correction could not be
%             computed (e.g. reference window had too few valid samples, or
%             moving-window σ was undefined), ssCorr is left equal to ss.
%     qc      1xN flag: 0 = unchanged, 1 = drift/damping corrected,
%                       2 = segment skipped (reference window unusable).

    if ~isfield(cfg, 'Timestep')
        error('correctDriftDamping:NoTimestep', ...
              'cfg.Timestep (minutes/sample) is required.');
    end
    if ~isfield(cfg, 'zsWindowDays'), cfg.zsWindowDays = 15;     end
    if ~isfield(cfg, 'zsRefDays'),    cfg.zsRefDays    = 15;     end
    if ~isfield(cfg, 'zsMode'),       cfg.zsMode       = 'both'; end

    N = numel(ss);
    if isempty(installIdx)
        installIdx = 1;
    end
    installIdx = installIdx(installIdx >= 1 & installIdx <= N);
    installIdx = unique([1, installIdx(:)']);

    spd  = round(24*60 / cfg.Timestep);
    win  = max(3, round(cfg.zsWindowDays * spd));
    refN = max(3, round(cfg.zsRefDays    * spd));

    mu_mw = movmean(ss, win, 'omitnan');
    sd_mw = movstd (ss, win, 'omitnan');
    sd_mw(sd_mw < eps) = NaN;
    z = (ss - mu_mw) ./ sd_mw;

    ssCorr = ss;
    qc     = zeros(1, N);

    segStart = [installIdx, N + 1];
    minRefSamples = max(2, round(0.1 * refN));

    for k = 1:numel(segStart) - 1
        a = segStart(k);
        b = segStart(k + 1) - 1;
        rEnd = min(a + refN - 1, b);
        refSeg = ss(a:rEnd);
        if sum(~isnan(refSeg)) < minRefSamples
            qc(a:b) = 2;
            continue
        end
        mu_ref = mean(refSeg, 'omitnan');
        sd_ref = std (refSeg, 'omitnan');
        if ~(sd_ref > eps)
            qc(a:b) = 2;
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

        % Where the moving-window normalization failed (σ_mw undefined,
        % yielding NaN in rec) but the raw sample was valid, fall back to
        % the original so we don't fabricate gaps.
        keep = ~isnan(rec);
        ssCorr(seg(keep)) = rec(keep);

        changed = keep & ~isnan(ss(seg)) & ...
                  abs(ssCorr(seg) - ss(seg)) > 1e-9;
        qc(seg(changed)) = 1;
    end
end
