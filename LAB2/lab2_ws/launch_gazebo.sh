#source /opt/ros/noetic/setup.bash
#source ./LAB2/lab2_ws/devel/setup.bash
sudo killall rosmaster
sudo killall gzserver
sudo killall gzclient
roslaunch turtlebot3_mr turtlebot3_lab2.launch
roslaunch turtlebot3_mr apriltag_gazebo.launch

