function diag = detectDriftDamping(ss, installIdx, cfg)
% detectDriftDamping  Diagnose long-term drift and signal damping in TDM ΔT.
%
%   diag = detectDriftDamping(ss, installIdx, cfg)
%
%   For each (re)install segment, compare statistics of an early reference
%   window (first refN valid samples) with a late window (last refN valid
%   samples) and decide whether long-term drift and/or signal damping are
%   present. The function is read-only: it does NOT modify ss.
%
%   Inputs:
%     ss          1xN ΔT time series (deg C); NaN allowed.
%     installIdx  Indices marking sensor (re)installs. [] = single install
%                 at sample 1.
%     cfg         Struct with fields:
%                   .Timestep         minutes per sample (REQUIRED)
%                   .zsRefDays        reference window width, days (default 15)
%                   .zsMinRefSamples  min valid samples in each window
%                                     (default max(24, 0.05*refN))
%                   .driftThresh      |drift score| above which drift is
%                                     flagged (default 0.5 σ)
%                   .dampingThresh    σ_late/σ_ref BELOW which damping is
%                                     flagged (default 0.7)
%
%   Output:
%     diag        Struct:
%                   .nSegments         number of segments inspected
%                   .worstDriftScore   max |drift| across segments
%                   .worstDampingRatio min damping ratio across segments
%                   .driftDetected     boolean
%                   .dampingDetected   boolean
%                   .recommendation    'detrend'|'damping'|'both'|'none'
%                   .message           one-line human summary
%                   .segments          struct array per segment with fields
%                                      .a .b .nValid .mu_ref .sd_ref
%                                      .mu_late .sd_late .driftScore
%                                      .dampingRatio .status

    if ~isfield(cfg, 'Timestep')
        error('detectDriftDamping:NoTimestep', ...
              'cfg.Timestep (minutes/sample) is required.');
    end
    if ~isfield(cfg, 'zsRefDays'),     cfg.zsRefDays     = 15;  end
    if ~isfield(cfg, 'driftThresh'),   cfg.driftThresh   = 0.5; end
    if ~isfield(cfg, 'dampingThresh'), cfg.dampingThresh = 0.7; end

    spd  = round(24*60 / cfg.Timestep);
    refN = max(3, round(cfg.zsRefDays * spd));

    if isfield(cfg, 'zsMinRefSamples') && ~isempty(cfg.zsMinRefSamples)
        minRefSamples = cfg.zsMinRefSamples;
    else
        minRefSamples = max(24, round(0.05 * refN));
    end

    N = numel(ss);
    if isempty(installIdx), installIdx = 1; end
    installIdx = installIdx(installIdx >= 1 & installIdx <= N);
    installIdx = unique([1, installIdx(:)']);
    segStart = [installIdx, N + 1];

    diag = struct();
    diag.nSegments = numel(installIdx);
    diag.segments = repmat(struct( ...
        'a', 0, 'b', 0, 'nValid', 0, ...
        'mu_ref', NaN, 'sd_ref', NaN, ...
        'mu_late', NaN, 'sd_late', NaN, ...
        'driftScore', NaN, 'dampingRatio', NaN, ...
        'status', ''), 1, diag.nSegments);

    worstDrift   = 0;
    worstDamping = 1;     % 1.0 = no damping
    anyOk        = false;

    for k = 1:numel(segStart) - 1
        a = segStart(k);
        b = segStart(k + 1) - 1;
        diag.segments(k).a = a;
        diag.segments(k).b = b;

        segValid = find(~isnan(ss(a:b))) + (a - 1);
        nValid   = numel(segValid);
        diag.segments(k).nValid = nValid;

        % Need at least two non-overlapping windows of minRefSamples each.
        if nValid < 2 * minRefSamples
            diag.segments(k).status = sprintf('too few valid (%d<%d)', ...
                nValid, 2 * minRefSamples);
            continue
        end

        winN = min(refN, floor(nValid / 2));
        refIdx  = segValid(1:winN);
        lateIdx = segValid(end - winN + 1 : end);

        mu_ref  = mean(ss(refIdx));   sd_ref  = std(ss(refIdx));
        mu_late = mean(ss(lateIdx));  sd_late = std(ss(lateIdx));
        diag.segments(k).mu_ref  = mu_ref;
        diag.segments(k).sd_ref  = sd_ref;
        diag.segments(k).mu_late = mu_late;
        diag.segments(k).sd_late = sd_late;

        if ~(sd_ref > eps)
            diag.segments(k).status = 'zero σ_ref';
            continue
        end

        driftScore   = (mu_late - mu_ref) / sd_ref;
        dampingRatio = sd_late / sd_ref;
        diag.segments(k).driftScore   = driftScore;
        diag.segments(k).dampingRatio = dampingRatio;
        diag.segments(k).status       = 'ok';
        anyOk = true;

        if abs(driftScore)   > abs(worstDrift),   worstDrift   = driftScore;   end
        if dampingRatio      < worstDamping,      worstDamping = dampingRatio; end
    end

    diag.worstDriftScore   = worstDrift;
    diag.worstDampingRatio = worstDamping;
    diag.driftDetected   = anyOk && abs(worstDrift) > cfg.driftThresh;
    diag.dampingDetected = anyOk && worstDamping    < cfg.dampingThresh;

    if diag.driftDetected && diag.dampingDetected
        diag.recommendation = 'both';
    elseif diag.driftDetected
        diag.recommendation = 'detrend';
    elseif diag.dampingDetected
        diag.recommendation = 'damping';
    else
        diag.recommendation = 'none';
    end

    if ~anyOk
        diag.message = 'Insufficient valid data to assess drift/damping.';
    else
        if diag.driftDetected
            driftStr = sprintf('DRIFT (%+.2fσ shift)', worstDrift);
        else
            driftStr = sprintf('no drift (%+.2fσ)', worstDrift);
        end
        if diag.dampingDetected
            dampStr = sprintf('DAMPING (σ ratio %.2f)', worstDamping);
        else
            dampStr = sprintf('no damping (σ ratio %.2f)', worstDamping);
        end
        diag.message = sprintf('%s; %s', driftStr, dampStr);
    end
end
