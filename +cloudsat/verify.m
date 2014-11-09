function [outalgorithm, outproduct] = verify(inalgorithm , inproduct)
%cloudsat.verify Verifies name of algorithm and possibly product
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

if ~inproduct;
    inproduct = '';
end;

switch upper(inalgorithm);
    case {'1B-CPR' , '1B_CPR' , '1B'};
        outalgorithm = '1B-CPR';
        switch upper(inproduct);
            case 'PROFILE_TIME';
                outproduct = 'Profile_time';
            case 'UTC_START';
                outproduct = 'UTC_start';
            case 'TAI_START';
                outproduct = 'TAI_start';
            case 'LATITUDE';
                outproduct = 'Latitude';
            case 'LONGITUDE';
                outproduct = 'Longitude';
            case 'RANGE_TO_INTERCEPT';
                outproduct = 'Range_to_intercept';
            case 'DEM_ELEVATION';
                outproduct = 'DEM_elevation';
            case 'RANGE_TO_FIRST_BIN';
                outproduct = 'Range_to_first_bin';
            case 'RAYHEADER_RANGEBINSIZE';
                outproduct = 'RayHeader_RangeBinSize';
            case 'PITCH_OFFSET';
                outproduct = 'Pitch_offset';
            case 'ROLL_OFFSET';
                outproduct = 'Roll_offset';
            case 'DATA_QUALITY';
                outproduct = 'Data_quality';
            case 'DATA_STATUS';
                outproduct = 'Data_status';
            case 'DATA_TARGETID';
                outproduct = 'Data_targetID';
            case 'NAVIGATION_LAND_SEA_FLAG';
                outproduct = 'Navigation_land_sea_flag';
            case 'RAYHEADER_LAMBDA';
                outproduct = 'RayHeader_lambda';
            case 'RAYHEADER_SPATAVG';
                outproduct = 'RayHeader_SpatAvg';
            case 'RAYHEADER_CALVERS';
                outproduct = 'RayHeader_CalVers';
            case 'RAYSTATUS_VALIDITY';
                outproduct = 'RayStatus_validity';
            case 'RAYSTATUS_PRI';
                outproduct = 'RayStatus_PRI';
            case 'RAYSTATUS_PULSEWIDTH';
                outproduct = 'RayStatus_pulseWidth';
            case 'RAYSTATUS_ANTENNANOISE';
                outproduct = 'RayStatus_antennaNoise';
            case 'TRANSMITPOWER';
                outproduct = 'TransmitPower';
            case 'TRANSMITPOWER_AVG';
                outproduct = 'TransmitPower_Avg';
            case 'RADARCOEFFICIENT';
                outproduct = 'RadarCoefficient';
            case 'NOISEFLOORPOWERS';
                outproduct = 'NoiseFloorPowers';
            case 'RECEIVEDECHOPOWERS';
                outproduct = 'ReceivedEchoPowers';
            case 'SIGMA-ZERO';
                outproduct = 'Sigma-Zero';
            case 'SURFACEBINNUMBER';
                outproduct = 'SurfaceBinNumber';
            case 'FLATSURFACECLUTTER';
                outproduct = 'FlagSurfaceClutter';
            case 'SURFACECLUTTER_INDEX';
                outproduct = 'SurfaceClutter_Index';
            case 'SURFACEBINNUMBER_FRACTION';
                outproduct = 'SurfaceBinNumber_Fraction';
            case '';
                outproduct = '';
            otherwise;
                error('The product specified cannot be found in the algorithm. Please double check it.');
        end;
%     case {'2B-CLDCLASS' , '2B_CLDCLASS' , '2B-CLOUDCLASS' , '2B_CLOUDCLASS'};
%         outalgorithm = '2B-CLDCLASS';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-CLDCLASS-LIDAR' , '2B_CLDCLASS_LIDAR' , '2B-CLOUDCLASS-LIDAR' , '2B_CLOUDCLASS_LIDAR'};
%         outalgorithm = '2B-CLDCLASS-LIDAR';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-CWC-RO' , '2B_CWC_RO'};
%         outalgorithm = '2B-CWC-RO';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-CWC-RVOD' , '2B_CWC_RVOD'};
%         outalgorithm = '2B-CWC-RVOD';
%         switch upper(inproduct);
%             case
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-FLXHR' , '2B_FLXHR'};
%         outalgorithm = '2B-FLXHR';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-FLXHR-LIDAR' , '2B_FLXHR_LIDAR'};
%         outalgorithm = '2B-FLXHR-LIDAR';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-GEOPROF' , '2B_GEOPROF'};
%         outalgorithm = '2B-GEOPROF';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-GEOPROF-LIDAR' , '2B_GEOPROF_LIDAR'};
%         outalgorithm = '2B-GEOPROF-LIDAR';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2B-TAU' , '2B_TAU'};
%         outalgorithm = '2B-TAU';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2C-ICE' , '2C_ICE'};
%         outalgorithm = '2C-ICE';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2C-PRECIP-COLUMN' , '2C_PRECIP_COLUMN'};
%         outalgorithm = '2C-PRECIP-COLUMN';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2C-RAIN-PROFILE' , '2C_RAIN_PROFILE'};
%         outalgorithm = '2C-RAIN-PROFILE';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2C-SNOW-PROFILE' , '2C_SNOW_PROFILE'};
%         outalgorithm = '2C-SNOW-PROFILE';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2D-CLOUDSAT-POES' , '2D_CLOUDSAT_POES'};
%         outalgorithm = '2D-CLOUDSAT-POES';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2D-CLOUDSAT-TC' , '2D_CLOUDSAT_TC'};
%         outalgorithm = '2D-CLOUDSAT-TC';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'2D-CLOUDSAT-TRMM' , '2D_CLOUDSAT_TRMM'};
%         outalgorithm = '2D-CLOUDSAT-TRMM';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'ECMWF-AUX' , 'ECMWF_AUX' , 'ECMWF'};
%         outalgorithm = 'ECMWF-AUX';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
%         end;
%     case {'MODIS-AUX' , 'MODIS_AUX' , 'MODIS'};
%         outalgorithm = 'MODIS-AUX';
%         switch upper(inproduct);
%             case
%                 
%             case '';
%                 outproduct = '';
%             otherwise;
%                 error('The product specified cannot be found in the algorithm. Please double check it.');
        end;
    otherwise;
        error('The algorithm specified cannot be found. Please double check it.');
end;

end