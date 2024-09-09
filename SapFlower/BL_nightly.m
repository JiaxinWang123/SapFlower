% This file is borrowed from Baseliner
% 
% Baseliner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3.
% Baseliner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with Baseliner. If not, see <http://www.gnu.org/licenses/>.



function [bl_night]=BL_nightly(xSensor, DOY, TOD)
    % establishes initial baseline based on maximum dT value each
    % night (defined by time before 7:00 AM)

    bl_night = [];
    for d = min(DOY):max(DOY)
        % Ensure DI indices are within the bounds of xSensor
        DI = find(DOY == d & TOD < 700 & xSensor' > 0);
        DI = DI(DI <= length(xSensor)); % Filter out-of-bounds indices

        if ~isempty(DI)
            [~, iDI] = max(xSensor(DI));
            if ~isempty(iDI)  % Check if iDI is not empty
                bl_night = [bl_night; DI(iDI(1))];
            end
        end
    end

    bl_night = [1; bl_night; length(xSensor)];
    bl_night = unique(bl_night)';
end
