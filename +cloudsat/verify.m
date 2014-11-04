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
  case '1B-CPR' or '1B_CPR' or '1B'
    outalgorithm = '1B-CPR'
    
  case '2B-CLDCLASS' or '2B_CLDCLASS' or '2B-CLOUDCLASS' or '2B_CLOUDCLASS'
    outalgorithm = '2B-CLDCLASS'
    
  case '2B-CLDCLASS-LIDAR' or '2B_CLDCLASS_LIDAR' or '2B-CLOUDCLASS-LIDAR' or '2B_CLOUDCLASS_LIDAR'
    outalgorithm = '2B-CLDCLASS-LIDAR'
    
  case '2B-CWC-RO' or '2B_CWC_RO'
    outalgorithm = '2B-CWC-RO'
    
  case '2B-CWC-RVOD' or '2B_CWC_VOD'
    outalgorithm = '2B-CWC-RVOD'
    
  case '2B-FLXHR' or '2B_FLXHR'
    outalgorithm = '2B-FLXHR'
    
  case '2B-FLXHR-LIDAR' or '2B_FLXHR_LIDAR'
    outalgorithm = '2B-FLXHR-LIDAR'
    
  case '2B-GEOPROF' or '2B_GEOPROF'
    outalgorithm = '2B-GEOPROF'
    
  case '2B-GEOPROF-LIDAR' or '2B_GEOPROF_LIDAR'
    outalgorithm = '2B-GEOPROF-LIDAR'
    
  case '2B-TAU' or '2B_TAU'
    outalgorithm = '2B-TAU'
    
  case '2C-ICE' or '2C_ICE'
    outalgorithm = '2C-ICE'
    
  case '2C-PRECIP-COLUMN' or '2C_PRECIP_COLUMN'
    outalgorithm = '2C-PRECIP-COLUMN'
    
  case '2C-RAIN-PROFILE' or '2C_RAIN_PROFILE'
    outlagorithm = '2C-RAIN-PROFILE'
    
  case '2C-SNOW-PROFILE' or '2C_SNOW_PROFILE'
    outalgorithm = '2C-SNOW-PROFILE'
    
  case '2D-CLOUDSAT-POES' or '2D_CLOUDSAT_POES'
    outalgorithm = '2D-CLOUDSAT-POES'
    
  case '2D-CLOUDSAT-TC' or '2D_CLOUDSAT_TC'
    outalgorithm = '2D-CLOUDSAT-TC'
    
  case '2D-CLOUDSAT-TRMM' or '2D_CLOUDSAT_TRMM'
    outalgorithm = '2D-CLOUDSAT-TRMM'
    
  case 'ECMWF-AUX' or 'ECMWF_AUX' or 'ECMWF'
    outalgorithm = 'ECMWF-AUX'
    
  case 'MODIS-AUX' or 'MODIS_AUX' or 'MODIS'
    outalgorithm = 'MODIS-AUX'
    
  otherwise
    error('The algorithm specified cannot be found. Please double check it.')
end
