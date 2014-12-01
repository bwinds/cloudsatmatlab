#### DOWNLOAD FILES HERE: https://github.com/ethan-nelson/cloudsatmatlab/releases ####

##### To subscribe to updates, sign up here: http://goo.gl/forms/YCnazb4C5r #####

cloudsatmatlab
==============

This repository contains code that allows robust reading of CloudSat files.

To install, simply move the +cloudsat folder into your main MATLAB directory, ensuring the plus sign is retained in the directory name.

Functions available:
* Open the file:          `cloudsat.io('open',FILENAMEHERE,ALGORITHMNAMEHERE);`
* Close the file:         `cloudsat.io('close');`
* Read a product:         `data = cloudsat.io('read',PRODUCTNAMEHERE);`
* Convert a product:      `data = cloudsat.convert(data,PRODUCTNAMEHERE);`

At the moment, the algorithm and product name are case sensitive and must match the case of the fields on the DPC site. For example, `2B-GEOPROF` and `Radar_Reflectivity` are the proper cases.

Versions successfully tested on include R2011b, R2014a, and R2014b. Please feel free to contact me with other compatibilities at `ethan-nelson@users.noreply.github.com` or directly on GitHub.

