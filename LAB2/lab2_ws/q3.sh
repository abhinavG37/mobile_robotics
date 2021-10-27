source /opt/ros/noetic/setup.bash
source ./devel/setup.bash
sudo killall rosmaster
sudo killall gzserver
sudo killall gzclient
gnome-terminal -- sh -c 'roscore'
sleep 5
#roslaunch turtlebot3_mr turtlebot3_lab2.launch
gnome-terminal -- sh -c 'roslaunch turtlebot3_mr turtlebot3_lab2.launch'
sleep 10
gnome-terminal -- sh -c 'roslaunch turtlebot3_mr apriltag_gazebo.launch'
sleep 1
gnome-terminal -- sh -c 'rosrun rviz rviz -d ./src/turtlebot3_mr/config/rviz.rviz'
sleep 2
gnome-terminal -- sh -c 'rosrun mobile_robotics subscriber_node.py'

