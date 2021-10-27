./launch_gazebo.sh
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.1333}}'
rqt_plot  /odom/pose/pose/position
