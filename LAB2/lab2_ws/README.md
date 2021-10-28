#**LAB 2 SUBMISSION: EECE-5552 FALL 2021**
##Abhinav Gupta: 001524029

* ###Repository Structure
    * Packages are housed in `LAB2/lab2_ws/src/`
        * **mobile_robotics**: Contains the solution [subscriber/publisher](https://github.com/abhinavG37/mobile_robotics/tree/master/LAB2/lab2_ws/src) node and kinematics class
        * **turtlebot3_mr**: Gazebo launch files for LAB2
<pre>
├── CMakeLists.txt -> /opt/ros/noetic/share/catkin/cmake/toplevel.cmake
├── __init__.py
├── mobile_robotics
│   ├── CMakeLists.txt
│   ├── include
│   │   └── mobile_robotics
│   ├── __init__.py
│   ├── msg
│   │   └── messages.msg
│   ├── package.xml
│   ├── scripts
│   │   ├── packages
│   │   │   ├── __init__.py
│   │   │   └── Kinematics.py
│   │   ├── subscriber_node.py
│   │   └── tf2_listener_node.py
│   ├── src
│   │   └── subscriber_node.cpp
│   ├── TF_overview.gv
│   └── TF_overview.pdf
└── turtlebot3_mr
    ├── CMakeLists.txt
    ├── config
    │   ├── rviz.rviz
    │   ├── settings.yaml
    │   └── tags.yaml
    ├── images
    │   ├── gazebo_empty.png
    │   └── rviz.png
    ├── launch
    │   ├── apriltag_gazebo.launch
    │   └── turtlebot3_lab2.launch
    ├── models
    │   └── Apriltag36_11_00000
    │       ├── materials
    │       │   ├── scripts
    │       │   │   └── Apriltag.material
    │       │   └── textures
    │       │       └── tag36_11_00000.png
    │       ├── model.config
    │       └── model.sdf
    ├── package.xml
    ├── README.md
    └── urdf
        ├── turtlebot3_rpi_camera.gazebo.xacro
        └── turtlebot3_rpi_camera.urdf.xacro

</pre>
* ###**High Level Setup**
    * Clone repository to a destination folder and `cd` to it
    * Build the workspace using `cd LAB2/lab2_ws && catkin_make`
    * Source the packages using
        * source ./devel/
        * source

* ###Instructions for running
    * Navigate to the root of workspace
    * Create shell script executables`sudo chmod +x q2.sh q3.sh`
    * **For Question 2**:
        * In the `/lab2_ws` directory run the shell script q2.sh using `./q2.sh `
        * Gazebo spawns turtlebot3 rotating in a circle whose radius can be seen on `rqt_plot`
    * For **Question 3**:
      * Overview
        * The mobile_robotics package uses a subscriber_node.py script to communicate with the tag and move the turtlebot 
        * **tf2 lookup Transforms** are used to get the relative pose between `tag_0` and `base_footprint` frames
      * Instructions
        * In the `/lab2_ws` directory run the shell script q3.sh using `./q3.sh `
        * Delayed consoles will open with roscore, gazebo_turtlebot3, gazebo_apriltag, RVIZ window, and a terminal with a prompt for traversal duration will open up
        * Fill a numerical value (in seconds) on the prompt window. This will cause the robot to move towards the tag at a precalculated speed and trajectory
  