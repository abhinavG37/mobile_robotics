#!/usr/bin/env python
import math

import rospy.timer
import geometry_msgs.msg
import numpy as np
import scipy.linalg as operations
import rospy
from apriltag_ros.msg import AprilTagDetectionArray
import tf2_ros
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import Twist


# global deltaTime


class Detection:
    def __init__(self):
        self.tfBuffer = tf2_ros.Buffer()
        self.listener = tf2_ros.TransformListener(self.tfBuffer)
        self.loop_rate = rospy.Rate(1)
        self.position = [0, 0, 0]
        self.euler = [0, 0, 0]
        self.deltaT = int(input("Enter Value of Duration \t"))

        self.transVel_max = 0.22      #x_dot_max
        self.rotVel_max = 2.74725     #Theta_dot_max
        #Given a rotational angle theta: If we fix the rotational speed
        #The minimum time taken to rotate by that angle
        # is given by: t_rot = theta(radians)/2.74725
        rospy.Subscriber("/tag_detections", AprilTagDetectionArray, self.callback)

    def point_transform_convention(self, pose):
        self.position[0] = pose.position.x
        self.position[1] = pose.position.y
        self.position[2] = pose.position.z

        quaternion = (
            pose.orientation.x,
            pose.orientation.y,
            pose.orientation.z,
            pose.orientation.w)

        self.euler = euler_from_quaternion(quaternion)
        return self.position, self.euler

    def frame_transform_convention(self, pose):
        self.position[0] = pose.transform.translation.x
        self.position[1] = pose.transform.translation.y
        self.position[2] = pose.transform.translation.z

        quaternion = (
            pose.transform.rotation.x,
            pose.transform.rotation.y,
            pose.transform.rotation.z,
            pose.transform.rotation.w)

        self.euler = euler_from_quaternion(quaternion)
        return self.position, self.euler

    @staticmethod
    def convert_to_quaternion(val):
        quat_msg = [val.x, val.y, val.z, val.w]
        return quat_msg

    def callback(self, data):

        if len(data.detections) > 0:  # Detect tag pose with respect to camera rgb frame
            try:
                transform_base_tag = self.tfBuffer.lookup_transform('base_footprint', 'tag_0', rospy.Time(0))
                print("TRANSFORM BASE TO TAG: \n {}".format(transform_base_tag))
                [self.position, self.euler] = self.frame_transform_convention(transform_base_tag)
                start_pose_val = np.identity(3)
                init_tag_position_projection = np.array([self.position[0], self.position[1], 0])

                # #######################DEFINE MESSAGES FOR ROT AND TRANSLATION###########################
                msg_rot = geometry_msgs.msg.Twist()
                msg_rot.linear.x = 0
                msg_rot.angular.z = 0

                msg_trans = geometry_msgs.msg.Twist()
                msg_trans.linear.x = 0
                msg_trans.angular.z = 0
                ##############################################################################################
                # ##########################DETERMINE STATIONARY ROTATION TIME AND DURATION #################
                rotation_angle = math.atan2(self.position[1], self.position[0])
                rotTime = rotation_angle/self.rotVel_max   #SAME FOR BOTH ROTATIONS
                # #############################ACTUATION FOR ROTATION##############################################################
                start_time_rot1 = rospy.Time.now()
                duration_rot1 = rospy.Duration(int(rotTime))
                end_time_rot_1 = start_time_rot1 + duration_rot1
                if rospy.Time.now() <= end_time_rot_1:
                    msg_rot.angular.z = -self.rotVel_max
                    pub.publish(msg_rot)
                else:
                    msg_rot.angular.z = 0
                    pub.publish(msg_rot)
                ########################DETERMINE POSE AFTER ROTATION 1 #########################
                rot_pose_01 = np.array([[math.cos(rotation_angle), -math.sin(rotation_angle), 0],
                                        [math.sin(rotation_angle), math.cos(rotation_angle), 0],
                                        [0, 0, 1]])
                #Feed this as initial pose to translation
                ###############################TRANSLATION####################################
                # Convert transformation Base->Tag to a SE(2) Pose using projection on the ground plane

                end_pose_val = np.array([[1, 0, init_tag_position_projection[0] - 0.12],
                                         [0, 1, init_tag_position_projection[1]],
                                         [0, 0, 1]])

                self.publisher_method(msg_trans, rot_pose_01, end_pose_val, self.deltaT)
                ###########################COUNTER ROTATION################################################
                start_time_rot2 = rospy.Time.now()
                duration_rot2 = rospy.Duration(int(rotTime))
                end_time_rot_2 = start_time_rot2 + duration_rot2
                if rospy.Time.now() <= end_time_rot_2:
                    msg_rot.angular.z = self.rotVel_max
                    pub.publish(msg_rot)
                else:
                    msg_rot.angular.z = 0
                    pub.publish(msg_rot)
                # rot_pose_23 = np.array([[math.cos(-rotation_angle), -math.sin(-rotation_angle), 0],
                #                         [math.sin(-rotation_angle), math.cos(-rotation_angle), 0],
                #                         [0, 0, 1]])
                rospy.signal_shutdown("DONE")

            except(tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
                print("Tag not detected. Transformation stalled")

        else:  # Tag not detected
            rospy.loginfo(rospy.get_caller_id() + "\nTag Not Detected")

    @staticmethod
    def publisher_method(msg_trans, start_pose_val, end_pose_val, deltaTime):
        msg = msg_trans
        start_time = rospy.Time.now()
        duration = rospy.Duration(deltaTime)
        end_time = start_time + duration

        Kine_obj = InverseKine(start_pose_val, end_pose_val, 0, deltaTime)
        x_dot, theta_dot, rVel, lVel = Kine_obj.i_kine(end_pose_val)
        print('LVel velocity Expected:{} | RVel velocity Expected:{}'.format(lVel, rVel))
        while rospy.Time.now() <= end_time:
            if lVel > 6.33 or rVel > 6.33:
                if rospy.Time.now() != end_time:
                    print("Infeasible Constraints | Publishing max linear speed | Running for provided duration")
                    msg.linear.x = 0.22
                    msg.angular.z = 0
                    pub.publish(msg)
                else:
                    print("START Time = END Time")
                    msg.linear.x = 0
                    msg.angular.z = 0
                    pub.publish(msg)
                    break
            else:  # Normal commands within bounds
                if rospy.Time.now() != end_time:
                    msg.linear.x = x_dot
                    msg.angular.z = theta_dot
                    print("Publishing message: Linear:[{} {} {}] Angular[{} {} {}]".format(msg.linear.x, msg.linear.y, msg.linear.z, msg.angular.x, msg.angular.y, msg.angular.z))
                    pub.publish(msg)
                else:
                    print("START Time = end time")
                    msg.linear.x = 0
                    msg.angular.z = 0
                    pub.publish(msg)
                    break

    @staticmethod
    def start():
        rospy.loginfo("Starting Node")


# Class Inverse Kinematics
# Constructor: Defines values of Start (base_footprint) and End (April_tag base) pose
# Member Functions: i_kine
#           Return: 2-Vector with Left and Right Wheel velocities


class InverseKine:
    def __init__(self, start, end, start_time, deltaT):
        self.R = 0.033
        self.W = 0.16
        self.phi_r = None
        self.phi_l = None
        self.inv_Model = None
        self.start_pose = start  # np.array (3x3)
        self.end_pose = end  # np.array (3x3)
        self.start_time = start_time  # Make Robot start at T = 0 Seconds
        self.end_time = start_time + deltaT  # Make Robot stop at T = 5.0 Seconds

    def i_kine(self, calc_end_pose):
        self.end_pose = calc_end_pose
        # noinspection PyTypeChecker
        inv_Model = ((self.end_time - self.start_time) ** -1) * operations.logm(operations.inv(self.start_pose) @ self.end_pose)

        # omega = [0                  (r/w)*(rVel-lVel) (r/2)*(rVel+lVel);
        #         -(r/w)*(rVel-lVel)    0                  0;
        #         0                    0                  0
        #         ];
        #    Solve for phi_l, phi_r in the linear system:
        #                                                   omega = inv_Model

        theta_dot = inv_Model[0, 1]
        x_dot = inv_Model[0, 2]
        self.phi_l = (self.W * theta_dot + 2 * x_dot) / (2 * self.R)
        self.phi_r = (2 * x_dot - self.W * theta_dot) / (2 * self.R)
        return x_dot, theta_dot, self.phi_r, self.phi_l


# Class Forward Kinematics
# Constructor: Defines values of Start (base_footprint) and End (April_tag base) pose
# Member Functions: i_kine
#           Return: 2-Vector with Left and Right Wheel velocities

class ForwardKine:
    def __init__(self, start_time, end_time, start_pose, rVel, lVel):
        self.R = 0.033
        self.W = 0.16
        self.phi_r = rVel
        self.phi_l = lVel
        self.start_time = start_time  # Make Robot start at T = 0 Seconds
        self.end_time = end_time  # Make Robot stop at T = 1.0 Seconds
        self.start_pose = start_pose  # np.array (3x3)
        self.end_pose = None  # np.array (3x3)
        self.omega_dot = None

    def f_kine(self):
        # noinspection PyTypeChecker
        # omega = [0                  -(r/w)*(rVel-lVel) (r/2)*(rVel+lVel);
        #         (r/w)*(rVel-lVel)    0                  0;
        #         0                    0                  0
        #         ];
        #    Solve for phi_l, phi_r in the linear system:
        #                                                   omega = inv_Model
        self.omega_dot = np.array([
            [0, (-self.R / self.W) * (self.phi_r - self.phi_l), (self.R / 2) * (self.phi_r + self.phi_l)],
            [(self.R / self.W) * (self.phi_r - self.phi_l), 0, 0],
            [0, 0, 0]
        ])
        self.end_pose = self.start_pose * operations.expm((self.end_time - self.start_time) * self.omega_dot)
        return self.end_pose


if __name__ == '__main__':
    # deltaTime = int(input("Enter duration of run:"))
    rospy.init_node('subscriber_nodePy', anonymous=True)
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    Listener_obj = Detection()
    rospy.spin()
