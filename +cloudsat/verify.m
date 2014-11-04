function [outalgorithm, outproduct] = verify(inalgorithm, inproduct)
%cloudsat.verify Verifies name of algorihtm and/or product.
% This program matches the name of the algorihtm and or product specified
% and formats case as necessary.
%
% Input arguments:
%  inalgorithm - name of algorithm specified by user.
%  inproduct - name of product specified by user.
%
% Output arguments:
%  outalgorithm - name of algorithm in correct case.
%  outproduct - name of product in correct case.
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

switch upper(inalgorithm)
  case '1B-CPR'
  
  case '2B-CLDCLASS'
  
  case '2B-CLDCLASS-LIDAR'
  
  case '2B-CWC-RO'
  
  case '2B-CWC-RVOD'
  
  case '2B-FLXHR'
  
  case '2B-FLXHR-LIDAR'
  
  case '2B-GEOPROF'
  
  case '2B-GEOPROF-LIDAR'
  
  case '2B-TAU'
  
  case '2C-ICE'
  
  case '2C-PRECIP-COLUMN'
  
  case '2C-RAIN-PROFILE'
  
  case '2C-SNOW'PROFILE'
  
  case '2D-CLOUDSAT-POES'
  
  case '2D-CLOUDSAT-TC'
  
  case '2D-CLOUDSAT-TRMM'
  
  case 'ECMWF-AUX'
  
  case 'MODIS-AUX'
  
end
