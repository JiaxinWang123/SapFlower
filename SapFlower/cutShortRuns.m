% This file is borrowed from Baseliner
% 
% Baseliner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3.
% Baseliner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with Baseliner. If not, see <http://www.gnu.org/licenses/>.

function values = cutShortRuns(values, minRunLength)
    % values may contain missing or bad data represented by NaNs.  These
    % delineate islands of good data.  If any such island contains less than
    % minRunLength values then invalidate those values by setting them all to
    % NaN.
    %
    % Code largely taken from:
    % http://stackoverflow.com/questions/23877056/how-can-i-get-a-non-continuous-data-in-a-nan-array-organized-in-a-cell-array
    endIndex = find(diff([isnan(values), 1]) == 1);
    startIndex = find(diff([1, isnan(values)]) == -1);
    lengths = endIndex - startIndex + 1;

    for i = 1:length(startIndex)
        if lengths(i) < minRunLength
            values(startIndex(i):endIndex(i)) = NaN;
        end
    end

end
