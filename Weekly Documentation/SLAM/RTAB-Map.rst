===========================
Paper Summary by Sharu Goel
===========================

RTAB-Map as an Open-Source Lidar and Visual SLAM Library for Large-Scale and Long-Term Online Operation
=======================================================================================================

Link: 
----- 

https://introlab.3it.usherbrooke.ca/mediawiki-introlab/images/7/7a/Labbe18JFR_preprint.pdf

Abstract: What is paper/resource about?
---------------------------------------
The paper does a very comprehensive analysis of different SLAM approaches available on ROS. Paper also serves as a guide for “Which SLAM approach to choose?” given the hardware resources available to us. Finally, it extends the idea of the RTAB-Map to support both visual and lidar based SLAM and accesses it’s performance on variety of real-world datasets.

How is it relevant?
------------------- 
Since we wish to move forward in implementing a better version of SLAM, the exhaustive comparison of various SLAM approaches will help us filter out which approaches can work for us and which approaches cannot. Also, the importance of multi-session mapping is realised. 

Notes about Hardware and Software Architecture?
-----------------------------------------------
The paper gives an extensive table which tells which hardware is required to implement a SLAM method.

Conclusion - Is it useful for our use case and how?
---------------------------------------------------
Currently we are implementing GMapping which is a lidar based SLAM approach. We are converting our visual data into lidar data and then implementing this technique; however, we can clearly see from this paper, that many state-of-the-art visual SLAM approaches do exist. RTAB-Map for example, utilises visual data and odometry information to give us a 2D/3D Occupancy Grid of the environment. RTAB-Map along with RGBDSLAMv2 are the only two visual SLAM methods which can provide us with occupancy grid outputs required by the ROS Navigation stack for path planning and navigation.
