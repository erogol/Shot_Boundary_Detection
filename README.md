Shot_Boundary_Detection
=======================

Shot_Boundary_Detection at Matlab

This code is to detect shot boundaries of a given video by using the grid based edge comparison between concecutive frames.
It also provides some general features about the video like;

- number of black frames -> to capture fade effects
- number of segments in video -> to keep tract of the tempo of an video. If it is an action movie trailer it is likely to be faster
- avg distance between frames of segments -> If motion in a segment is highe then this value will eb higher
- number of total segments -> All the segments dectection without thresholding


To use the code run perform_detect_shot_change.m 

You might change some variables to run correctly. Sorry for this inconvenience.

erengolge@gmail.com
cs.bilkent.edu.tr/~eren.golge


