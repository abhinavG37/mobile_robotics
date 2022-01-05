##Steps to generate a PGM and YAML file
### Starting Recording 
* Connect turtlebot3 and Host Computer to same WiFi network
* SSH into the Raspi: `ssh ubuntu@192.168.___.___` 
* New MASTER terminal: `roscore`
* New MASTER terminal: `roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch`
* Initiate sensors in HOST terminal: `roslaunch turtlebot3_bringup turtlebot3_robot.launch`
* New MASTER terminal: `cd /<Bag File Destination>`
  * Start Bag file recording: `rosbag record -a`
* New MASTER Terminal:
    * Start Cartographer Node: `roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=cartographer`
###Stopping recording of map:
  * Stop Bag file recorder: `Ctrl+C`
    * Bag file is created in the working directory of the recorder terminal
    * Name of bag file: _`YYYY-MM-DD-Time.bag`_ 
  * Finish Trajectory and write as a pbstream file
    * `rosservice call /finish_trajectory 0`
    * `rosservice call /write_state "{filename: '<Destination path>/<Filename>.pbstream', include_unfinished_submaps: "false"}" `
  * Stop cartographer node on MASTER
  * Using asset_writer service to obtain PGM and YAML files
    * Navigate to file directory for pbstream and bag files 
    * `roslaunch cartographer_ros assets_writer_ros_map.launch bag_filenames:=<Bag File Path>.bag pose_graph_filename:=<pbstream File poath>.pbstream`

### Viewing recorded data
  * Check pbstream file data:
    * `roslaunch cartographer_ros visualize_pbstream.launch pbstream_filename:=<pbstream File Path>/<Filename>.pbstream`
  * Play Rosbag file: `rosbag play <FilePath>.bag`
  * Visualize created map in Rviz
    * `rosrun rviz rviz`
    * `rosrun map_server map_server <YAML File Path>/<filename>.bag_map.yaml`
    
  
![Generated Image](RecordedFiles/Lab3Q1.bag_map.png)




##Potential Issues
Installation of Cartographer done using documentation
Anything works
In my computer, python2 and python3 both were installed
But in case of final installation sometimes by default python2 is used.
In such a case
* `sudo apt install python-is-python3`
* `alias python=python3`

Saving to a pbstream file had some issues. The exact command I used:

*`rosservice call /write_state "{filename: '${HOME}/Desktop/NEU/EECE_5550/ROS_ASSIGNMENTS/LAB3_Setup/revo_lds.pbstream', include_unfinished_submaps: "false"}"`



