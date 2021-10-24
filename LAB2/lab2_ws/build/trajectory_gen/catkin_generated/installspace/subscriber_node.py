#!/usr/bin/env python3
import rospy
import apriltag_ros
from apriltag_ros.msg import AprilTagDetection
from std_msgs.msg import String


def callback(data):
    print(dir(data))
    tag = AprilTagDetection()
    print(tag.pose.pose)
    # rospy.loginfo(rospy.get_caller_id() + "I heard")



def subscriber():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('subscriber_nodePy', anonymous=True)

    rospy.Subscriber("/tag_detections", AprilTagDetection, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    subscriber()
