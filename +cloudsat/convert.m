function [outfield, missingval] = convert(infield, fieldname)
%cloudsat.convert Scales and offsets data as necessary.
% This program reads the factor and offset values, and it also determines
% the converted missing value quantity.
%
% Input arguments:
%  infield - matrix of original data.
%  fieldname - name of field (e.g. Radar_Reflectivity)
%
% Output arguments:
%  output - matrix of converted data.
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

factorname = strcat(fieldname, '.factor');
offsetname = strcat(fieldname, '.offset');
missingname = strcat(fieldname, '.missing');

factor = cloudsat.io(factorname);
offset = cloudsat.io(offsetname);
missingval = cloudsat.io(missingname);

outfield = (infield - offset)./factor;
missingval = (missingval - offset)./factor;

end
