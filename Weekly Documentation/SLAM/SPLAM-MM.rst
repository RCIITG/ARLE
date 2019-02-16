===========================
Paper Summary by Sharu Goel
===========================

Long-Term Online Multi-Session Graph-Based SPLAM with Memory Management
=======================================================================

Link: 
----- 
https://introlab.3it.usherbrooke.ca/mediawiki-introlab/images/8/87/LabbeAURO2017.pdf

Abstract: What is paper/resource about?
---------------------------------------
For Simultaneous Planning, localisation and Mapping(SPLAM) it is important that a robot continuously updates its map according to the dynamic changes in the environment. Furthermore, it should be able to recognise where it is in an environment which it has previously mapped without mapping the whole environment. This calls for a efficient memory management system.

How is it relevant?
------------------- 
Since our Robot will be facing two major challenges: Multi-session mapping problem and long-term mapping in dynamic environment problem. Overcoming both these challenges requires us to work out an efficient memory management that can be used to limit the size of the map so that loop closure detections are always processed under a fixed time limit, thus satisfying online requirements for long-term and large-scale environment mapping.

Notes about Hardware and Software Architecture?
-----------------------------------------------
The SPLAM-MM was tested on a robot equipped with a short-range laser rangefinder and a RGB-D camera, patrolling autonomously in an indoor environment.

Conclusion - Is it useful for our use case and how?
---------------------------------------------------
If our bot is introduced into a dynamic environment where it encounters moving humans which obstruct the map at times or/and the bot moves within the same indoor map (which it does in our case) for long durations, then it needs to detect loop closures within a given time-constraint i.e. real-time loop closure detection. Thus, it needs a memory management mechanism, which identifies locations that should remain in a Working Memory (WM) for online processing from locations that should be transferred to a Long-Term Memory (LTM). When revisiting previously mapped areas that are in LTM, the mechanism can retrieve these locations and place them back in WM for online SPLAM.
