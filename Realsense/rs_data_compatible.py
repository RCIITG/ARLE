import math
import time
import cv2
import numpy as np
import pyrealsense2 as rs
import matplotlib.pyplot as plt

# fig1 = plt.figure()
# fig2 = plt.figure()

pipeline = rs.pipeline()
pipeline.start()

frames = pipeline.wait_for_frames()
depth = frames.get_depth_frame()
color = frames.get_color_frame() 

depth_data = depth.as_frame().get_data()
color_data = color.as_frame().get_data()

np_depth_image = np.asanyarray(depth_data)
np_color_image = np.asanyarray(color_data)
print(np_depth_image)
print(np_color_image)

plt.imshow(np_depth_image)
plt.show()
plt.imshow(np_color_image)
plt.show()

