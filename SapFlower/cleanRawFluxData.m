% This file is borrowed from Baseliner
% 
% Baseliner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3.
% Baseliner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with Baseliner. If not, see <http://www.gnu.org/licenses/>.


% process_dt_clean.m
% Sap flux raw data cleaner
function ss = cleanRawFluxData(ss, config)

    ss(ss < config.minRawValue) = NaN;
    ss(ss > config.maxRawValue) = NaN;

    % Deletes points either side of where temperature jumps too much
    dx = ss([1,1:end-1]) - ss;
    bad = abs(dx) > config.maxRawStep;
    bad = bad | [bad(2:end), 0];
    ss(bad) = NaN;

    % Replaces individual samples of NaN with the average of the samples
    % either side.
    nans = isnan(ss);
    loneNanI = nans & [0, ~nans(1:end-1)] & [~nans(2:end), 0];
    valuesBefore = ss(loneNanI([2:end, end]));
    valuesAfter = ss(loneNanI([1, 1:end-1]));
    ss(loneNanI) = (valuesBefore + valuesAfter) / 2;

    % point delete: deletes single point surrounded by missing values

    ss = cutShortRuns(ss, config.minRunLength);

end

