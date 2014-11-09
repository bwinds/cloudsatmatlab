function [field] = io(action, varargin)
%cloudsat.io Performs reading of files, with opening and closing if chosen.
% This program performs the basic reading operations on CloudSat files
% after opening the files if specified and before closing the files if
% specified. Data are converted to double precision.
%
% Input arguments:
%  If opening a file: 'open', file name, algorithm name
%  If reading a variable: 'read', product name
%  If closing a file: 'close'
%
% Output arguments:
%  field - matrix of read data
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global fid swid

switch action
    case {'open','o'};
        if nargin ~= 3;
            error('Please specify both the file name and algorithm name to open a file.');
        end;
        fid = matlab.io.hdfeos.sw.open(varargin{1});
        swid = matlab.io.hdfeos.sw.attach(fid, varargin{2});
        field = 'Opened file successfully.';
    case {'close','c'};
        matlab.io.hdfeos.sw.detach(swid);
        matlab.io.hdfeos.sw.close(fid);
        field = 'Closed file successfully.';
        clear fid swid;
    case {'read','r'};
        if ~any(strfind(varargin{1},'.'));
            field = double(matlab.io.hdfeos.sw.readField(swid, varargin{1}));
        else;
            field = double(matlab.io.hdfeos.sw.readAttr(swid, varargin{1}));
        end;
    otherwise;
        error('Please specify what action to perform: open, close, or read.');
end;

end
