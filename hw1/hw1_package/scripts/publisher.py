#!/usr/bin/env python

## Simple publisher that publishes the current time to '/hw1_time' topic

import rospy
from std_msgs.msg import String

def time_publisher():
    pub = rospy.Publisher('hw1_time', String, queue_size=10)
    rospy.init_node('time_publisher', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():
        curTime = "%s" % rospy.Time.now()
        rospy.loginfo(curTime)
        pub.publish(curTime)
        rate.sleep()

if __name__ == '__main__':
    try:
        time_publisher()
    except rospy.ROSInterruptException:
        pass
