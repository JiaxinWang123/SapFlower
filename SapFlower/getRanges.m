% This file is borrowed from Baseliner
% 
% Baseliner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3.
% Baseliner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with Baseliner. If not, see <http://www.gnu.org/licenses/>.

function [iStart, iEnd] = getRanges(a)
    % a is a vector of boolean values.  This routine returns the indices of
    % the start and end of runs of true values.

    % ensure a is a row vector
    a = reshape(a, [1,length(a)]);
    % get the diff %TEMP!!! can just use diff()
    e = a - [a(1), a(1:(end-1))];
    % starts are where we have false to true transitions
    iStart = find(e == 1);
    % ends occur just before a true to false transition.
    iEnd = find(e == -1) - 1;

    % handle initial and final values.
    if a(1)
        iStart = [1, iStart];
    end
    if a(end)
        iEnd = [iEnd, length(a)];
    end
end
