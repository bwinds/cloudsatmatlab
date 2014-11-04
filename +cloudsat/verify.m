function [outalgorithm, outproduct] = verify(inalgorithm, inproduct)
%cloudsat.verify Verifies name of algorihtm and/or product.
% This program matches the name of the algorihtm and or product specified
% and formats case as necessary.
%
% Input arguments:
%  inalgorithm - name of algorithm specified by user.
%  inproduct - name of product specified by user (optional).
%
% Output arguments:
%  outalgorithm - name of algorithm in correct case.
%  outproduct - name of product in correct case.
%
% See http://github.com/ethan-nelson/cloudsatmatlab for more information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if not inproduct; inproduct = ''; end;

switch upper(inalgorithm);
  case '1B-CPR' or '1B_CPR' or '1B';
    outalgorithm = '1B-CPR';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-CLDCLASS' or '2B_CLDCLASS' or '2B-CLOUDCLASS' or '2B_CLOUDCLASS';
    outalgorithm = '2B-CLDCLASS';
      switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-CLDCLASS-LIDAR' or '2B_CLDCLASS_LIDAR' or '2B-CLOUDCLASS-LIDAR' or '2B_CLOUDCLASS_LIDAR';
    outalgorithm = '2B-CLDCLASS-LIDAR';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-CWC-RO' or '2B_CWC_RO';
    outalgorithm = '2B-CWC-RO';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-CWC-RVOD' or '2B_CWC_RVOD';
    outalgorithm = '2B-CWC-RVOD';
    switch upper(inproduct);
      case
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-FLXHR' or '2B_FLXHR';
    outalgorithm = '2B-FLXHR';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-FLXHR-LIDAR' or '2B_FLXHR_LIDAR';
    outalgorithm = '2B-FLXHR-LIDAR';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-GEOPROF' or '2B_GEOPROF';
    outalgorithm = '2B-GEOPROF';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-GEOPROF-LIDAR' or '2B_GEOPROF_LIDAR';
    outalgorithm = '2B-GEOPROF-LIDAR';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2B-TAU' or '2B_TAU';
    outalgorithm = '2B-TAU';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2C-ICE' or '2C_ICE';
    outalgorithm = '2C-ICE';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2C-PRECIP-COLUMN' or '2C_PRECIP_COLUMN';
    outalgorithm = '2C-PRECIP-COLUMN';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2C-RAIN-PROFILE' or '2C_RAIN_PROFILE';
    outalgorithm = '2C-RAIN-PROFILE';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2C-SNOW-PROFILE' or '2C_SNOW_PROFILE';
    outalgorithm = '2C-SNOW-PROFILE';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2D-CLOUDSAT-POES' or '2D_CLOUDSAT_POES';
    outalgorithm = '2D-CLOUDSAT-POES';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2D-CLOUDSAT-TC' or '2D_CLOUDSAT_TC';
    outalgorithm = '2D-CLOUDSAT-TC';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case '2D-CLOUDSAT-TRMM' or '2D_CLOUDSAT_TRMM';
    outalgorithm = '2D-CLOUDSAT-TRMM';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case 'ECMWF-AUX' or 'ECMWF_AUX' or 'ECMWF';
    outalgorithm = 'ECMWF-AUX';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  case 'MODIS-AUX' or 'MODIS_AUX' or 'MODIS';
    outalgorithm = 'MODIS-AUX';
    switch upper(inproduct);
      case
      
      case '';
        outproduct = '';
      otherwise;
        error('The product specified cannot be found in the algorithm. Please double check it.');
      end;
  otherwise;
    error('The algorithm specified cannot be found. Please double check it.');
end;

end
