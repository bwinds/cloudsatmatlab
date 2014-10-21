function [field] = io(varname, varargin)
%cloudsat.io Performs reading of files, with opening and closing if chosen.
% This program performs the basic reading operations on CloudSat files
% after opening the files if specified and before closing the files if
% specified. Data are converted to double precision.
%
% Input arguments:
%  varname - name of field or special calls open and close the file.
%
% Output arguments:
%  field - matrix of read data
%
% See http://github.com/ethan-nelson/cloudsat for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global fid swid

switch varname
    case 'open';
        fid = matlab.io.hdfeos.sw.open(varargin{1});
        swid = matlab.io.hdfeos.sw.attach(fid, varargin{2});
        field = 0;
    case 'close';
        matlab.io.hdfeos.sw.detach(swid);
        matlab.io.hdfeos.sw.close(fid);
        field = 0;
        clear swid fid;
    otherwise;
        if ~any(strfind(varname,'.'));
            field = double(matlab.io.hdfeos.sw.readField(swid, varname));
        else;
            field = double(matlab.io.hdfeos.sw.readAttr(swid, varname));
        end;
end;

end