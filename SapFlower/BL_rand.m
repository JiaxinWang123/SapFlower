% This file is borrowed from Baseliner
% 
% Baseliner is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3.
% Baseliner is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with Baseliner. If not, see <http://www.gnu.org/licenses/>.


function [mean_k, sd_k]=BL_rand(xSensor,Timestep,bla);

    % calculates mean and standard deviation of k-line based on Monte-Carlo
    % runs allowing for normally-distributed, random point error with SD =
    % 1 hour.

    nruns=1000;
    ssL=length(xSensor);
    ii=find(isfinite(xSensor));
    iiL=length(ii);

    blaV=zeros(ssL,1);
    blaV(bla)=1;

    hrcount=(60/Timestep);

    kruns=nan*ones(iiL,nruns);
    for n=1:nruns
        nbl=nan*bla;
        for i=1:length(bla)
            nbl(i)=bla(i)+round(hrcount*randn(1));
        end
        nbl(nbl<=1)=[];
        nbl(nbl>=ssL)=[];
        sbl=xSensor(nbl);
        xx=nbl+sbl;
        nbl(isnan(xx))=[];
        sbl(isnan(xx))=[];
        nbl=[1;nbl;ssL];
        nbl=sortrows(unique(nbl));
        sbl=xSensor(nbl);
        if isnan(sbl(1))
            sbl(1)=sbl(2);
        end
        if isnan(sbl(end))
            sbl(end)=sbl(end-1);
        end

        blvi = interp1(nbl, sbl, (1:ssL)');
        kruns(:,n) = blvi(ii) ./ xSensor(ii) - 1;
    end
    kruns(kruns < 0) = 0;
    mean_k=nan*xSensor;
    sd_k=nan*xSensor;
    mean_k(ii)=mean(kruns,2);
    sd_k(ii)=std(kruns,0,2);

