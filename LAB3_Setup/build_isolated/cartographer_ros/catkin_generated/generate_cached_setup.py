# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/noetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/noetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB3_Setup/install_isolated;/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB2/lab2_ws/devel;/home/abhinav137/Desktop/ROSjects/ROSject_4_Turtlebot3/devel;/home/abhinav137/Desktop/ROSjects/ROSject_2/devel;/home/abhinav137/Desktop/ROSjects/ROSject_1/devel;/opt/ros/noetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB3_Setup/devel_isolated/cartographer_ros/env.sh')

output_filename = '/home/abhinav137/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB3_Setup/build_isolated/cartographer_ros/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
