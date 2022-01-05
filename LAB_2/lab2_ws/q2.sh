
gnome-terminal -- sh -c 'roslaunch turtlebot3_mr turtlebot3_lab2.launch'
sleep 10
gnome-terminal -- sh -c 'rqt_plot  /odom/pose/pose/position'
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.1333}}'

