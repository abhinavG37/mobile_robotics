#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Pose.h"
#include <apriltag_ros/AprilTagDetection.h>
#include <apriltag_ros/AprilTagDetectionArray.h>
// Callback which will save the estimated local position of the Apriltag
//geometry_msgs::PoseArray APtag_est_pos;
//void APtag_est_pos_cb(const geometry_msgs::PoseArray::ConstPtr& AP_est_pos){
//    //ROS_INFO("CALLBACK AP");
//    APtag_est_pos = *AP_est_pos;
//    int n_AP = 0; // Or you can use it as a global variable
//    n_AP = AP_est_pos->poses.size();
//    ROS_INFO("n=%d", n_AP);
//    if(n_AP>0){
//        ROS_INFO("APtag est pos=[%f, %f, %f]",  AP_est_pos->poses[0].position.x,
//                 AP_est_pos->poses[0].position.y,
//                 AP_est_pos->poses[0].position.z);
//    }
//}


void chatterCallbackFunc(const apriltag_ros::AprilTagDetectionArray::ConstPtr& msg)
{

    ROS_INFO("I Heard");
}

int main(int argc, char **argv)
{
    /**
     * The ros::init() function needs to see argc and argv so that it can perform
     * any ROS arguments and name remapping that were provided at the command line.
     * For programmatic remappings you can use a different version of init() which takes
     * remappings directly, but for most command-line programs, passing argc and argv is
     * the easiest way to do it.  The third argument to init() is the name of the node.
     *
     * You must call one of the versions of ros::init() before using any other
     * part of the ROS system.
     */
    ros::init(argc, argv, "subscriber");

    /**
     * NodeHandle is the main access point to communications with the ROS system.aa
     * The first NodeHandle constructed will fully initialize this node, and the last
     * NodeHandle destructed will close down the node.
     */
    ros::NodeHandle n;

    /**
     * The subscribe() call is how you tell ROS that you want to receive messages
     * on a given topic.  This invokes a call to the ROS
     * master node, which keeps a registry of who is publishing and who
     * is subscribing.  Messages are passed to a callback function, here
     * called chatterCallback.  subscribe() returns a Subscriber object that you
     * must hold on to until you want to unsubscribe.  When all copies of the Subscriber
     * object go out of scope, this callback will automatically be unsubscribed from
     * this topic.
     *
     * The second parameter to the subscribe() function is the size of the message
     * queue.  If messages are arriving faster than they are being processed, this
     * is the number of messages that will be buffered up before beginning to throw
     * away the oldest ones.
     */
    ros::Subscriber sub = n.subscribe("tag_detections", 1000, chatterCallbackFunc);

    /**
     * ros::spin() will enter a loop, pumping callbacks.  With this version, all
     * callbacks will be called from within this thread (the main one).  ros::spin()
     * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
     */
    ros::spin();

    return 0;
}