Limitations Testing: Distance (X translation)
=============================================

Data
----

This test data corresponds with the following distances:

    20130726_1 -> [x = 0.50m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_2 -> [x = 1.50m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_3 -> [x = 2.00m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_4 -> [x = 2.50m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_5 -> [x = 0.75m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_6 -> [x = 1.25m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_7 -> [x = 1.00m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_8 -> [x = 1.75m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_9 -> [x = 2.25m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_x -> [x = 2.75m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  
    20130726_x -> [x = 3.00m +/- 2mm,  y = 0.00mm +/- 2mm, z = 34.50mm +/- 2mm]  

Limitation
----------
The program was unable to collect data at both 2.75m 3.00m (robustfit did not have enough valid coordinates).

Apex Height Estimations
-----------------------

    Apex Height (Relative to World):  34.50mm +/- 2mm  
    Lidar Height (Relative to World): 21.00mm +/- 2mm  
    Apex Height (Relative to Lidar):  13.50mm +/- 4mm  
Assumptions
-----------
We are assuming that the lidar origin is located at the center of the device and that there is *no* rotation of the lidar.

Further Work
------------
Ensure to check the number of scan points need to calculate an apex.
