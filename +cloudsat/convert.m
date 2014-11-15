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
%  outfield - matrix of converted data.
%  missingval - converted value of missing data.
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin < 2;
    error('Please specified the array for conversion and the field name to read the properties.');
elseif nargin > 2;
    error('You have specified too many inputs. Check syntax of command.');
end;

factorname = strcat(fieldname, '.factor');
offsetname = strcat(fieldname, '.offset');
missingname = strcat(fieldname, '.missing');

factor = cloudsat.io('read',factorname);
offset = cloudsat.io('read',offsetname);
missingval = cloudsat.io('read',missingname);

outfield = (infield - offset)./factor;
missingval = (missingval - offset)./factor;

end
