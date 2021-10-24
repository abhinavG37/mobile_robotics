#!/usr/bin/env python3
import rospy
import apriltag_ros
from apriltag_ros.msg import AprilTagDetectionArray
from std_msgs.msg import String
import tf2_ros


class Detection:
    def __init__(self):
        # Node cycle rate (in Hz).
        self.position_cam_tag = None
        self.orientation_cam_tag = None
        self.loop_rate = rospy.Rate(10)
        rospy.Subscriber("/tag_detections", AprilTagDetectionArray, self.callback)

    def callback(self, data):
        Tag_pose = data.detections[0].pose.pose.pose
        self.position_cam_tag = Tag_pose.position
        self.orientation_cam_tag = Tag_pose.orientation
        print(Tag_pose.orientation)
        rospy.loginfo(rospy.get_caller_id() + "\nTag Pose Logged: \n Position:\n{} \nOrientation\n {}".format(Tag_pose.position, Tag_pose.orientation))


    @staticmethod
    def start():
        rospy.loginfo("Starting Node")


if __name__ == '__main__':
    rospy.init_node('subscriber_nodePy', anonymous=True)
    Listener_obj = Detection()
    rospy.spin()
    # Detection.start(Listener_obj)
