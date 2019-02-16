===========================
Paper Summary by Sharu Goel
===========================

Accurate Indoor Localization through Constrained Visual SLAM
============================================================

Link: 
----- 

http://www.ipin2017.org/ipinpapers/167/167.pdf

Abstract: What is paper/resource about?
---------------------------------------
Paper focuses on navigating indoor environments using Visual SLAM(VSLAM). To suppress the drifting issue of VSLAM, the paper proposes to refine the VSLAM reconstruction of the environment by taking into account the model of the environment itself.

How is it relevant?
------------------- 
The map we are trying to make is based on Visual SLAM techniques which express the resulting localization in an arbitrary coordinate frame and thus suffer from drift due to error accumulation. We can contain this error to a large extent and also express the SLAM based map with respect to a previously built database of the environment.

Notes about Hardware and Software Architecture?
-----------------------------------------------
Microsoft Surface Pro 4 tablet with an Intel Core i7-6650U @2.2GHz

Conclusion - Is it useful for our use case and how?
---------------------------------------------------
Whenever our bot will operate in an unknown environment, the approach will behave as a VSLAM and its localization will accumulate error over time. However when the bot will come back in a known environment the SLAM drift would be  estimated and corrected through a pose-graph optimization. That corrected trajectory would then be added to the database leading to its enrichment. Thus, we can exploit our Library’s blueprints to improve accuracy of the map built.
