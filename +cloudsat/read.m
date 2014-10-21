function [field, lat, lon, hgt] = read(filename, algorithm, fieldname)
%cloudsat.read This high-level function performs the main calls. 
% This program runs everything in the CloudSat MATLAB reading suite.
%
% Example call:
%    [ref, lat, lon, hgt] = cloudsat.read('file.hdf', '2b-geoprof',
%      .. 'Radar_Reflectivity');
%
% Input arguments:
%  filename - location of file to be read.
%  algorithm - name of algorithm (e.g. 2b-geoprof).
%  fieldname - name of field (e.g. Radar_Reflectivity).
%
% Output arguments:
%  field - data read.
%  lat - latitudes of swath.
%  lon - longitudes of swath.
%  hgt - heights of data.
%
% See http://github.com/ethan-nelson/cloudsat for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cloudsat.io('open', filename, algorithm);

field = cloudsat.io(fieldname);
field = cloudsat.convert(field,fieldname);

lat = cloudsat.io('Latitude');
lon = cloudsat.io('Longitude');
hgt = cloudsat.io('Height');

cloudsat.io('close');

end