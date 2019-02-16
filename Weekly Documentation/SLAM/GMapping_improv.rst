===========================
Paper Summary by Sharu Goel
===========================

A loop closure improvement method of Gmapping for low cost and resolution laser scanner
=======================================================================================

Link: 
----- 

https://www.sciencedirect.com/science/article/pii/S2405896316308278

Abstract: What is paper/resource about?
---------------------------------------
The paper proposes a Kalman Filter Based approach to improve the loop closure correction performance of GMapping using low cost and resolution laser scanners. Currently, low cost scanners(like RPLidar) give very bad loop closure performance. Thus, a Kalman filter based correction algorithm is proposed to correct state estimations of GMapping.

How is it relevant?
------------------- 
Currently, we are converting RGBD data into Lidar data using ROS packages. The performance of the package used(GMapping) to build the map using the laser scan data can be significantly improved by implementing the mentioned algorithm. 

Notes about Hardware and Software Architecture?
-----------------------------------------------
TurtleBot mobile robot and RPLidar scanner

Conclusion - Is it useful for our use case and how?
---------------------------------------------------
We can improve our current results from GMapping by utilizing this Kalman Filter based approach. Our project will seriously benefit from this approach since our environment(library) is pretty symmetric and our robot will be traversing the same areas repeatedly. By enhanced loop-closure performance, the map produced will be more accurate.
