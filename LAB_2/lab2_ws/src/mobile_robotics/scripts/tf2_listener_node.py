#!/usr/bin/env python
import rospy

import math
import tf2_ros
import geometry_msgs.msg
import turtlesim.srv

if __name__ == '__main__':
    rospy.init_node('tf2_listener_node', anonymous=True)

    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)

    # rospy.wait_for_service('spawn')
    # spawner = rospy.ServiceProxy('spawn', turtlesim.srv.Spawn)
    # turtle_name = rospy.get_param('turtle', 'turtle2')
    # spawner(4, 2, 0, turtle_name)

    # turtle_vel = rospy.Publisher('/cmd_vel', geometry_msgs.msg.Twist, queue_size=1)

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            trans_base_camera = tfBuffer.lookup_transform('base_footprint', 'camera_rgb_optical_frame', rospy.Time.now())
            # trans_base_camera = tfBuffer.lookup_transform('base_footprint', 'tag_0', rospy.Time.now())

            print(trans_base_camera)


            # print("RUNNING")
            # msg = geometry_msgs.msg.Twist()
            # msg.angular.z = 4 * math.atan2(trans.transform.translation.y, trans.transform.translation.x)
            # msg.linear.x = 0.5 * math.sqrt(trans.transform.translation.x ** 2 + trans.transform.translation.y ** 2)
            # rospy.loginfo(rospy.get_caller_id() + "\nmsg.angular(z): {}".format(msg.angular.z))

        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rate.sleep()
            continue




        rate.sleep()