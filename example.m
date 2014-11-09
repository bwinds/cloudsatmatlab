% This program shows an example of how to call and implement the reader.
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

filename = '../2011107032628_26428_CS_2B-GEOPROF_GRANULE_P_R04_E04.hdf';
algorithm = '2B-GEOPROF';

cloudsat.io('open', filename, algorithm); % Open file initally
field = cloudsat.io('read','Radar_Reflectivity'); % Read reflectivity
fieldconverted = cloudsat.convert(field,'Radar_Reflectivity'); % Convert reflectivity
lat = cloudsat.io('read','Latitude'); % Read latitude - no conversion required, but you could call convert anyway
lon = cloudsat.io('read','Longitude'); % Read longitude
hgt = cloudsat.io('read','Height'); % Read height
tim = cloudsat.io('read','Profile_time'); % Read profile time
cloudsat.io('close'); % Close file when finished
