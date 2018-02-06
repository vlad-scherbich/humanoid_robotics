#!/usr/bin/env python

## Simple subscriber that listens to std_msgs/Strings published and appends the result
## to a file called hw1_out.txt 

import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + ' Current time is: %s', data.data)
    curTime = "%s" % data.data
    filename = "../../hw1_out.txt"
    result = open(filename, "a")
    result.write(curTime)
    result.write('\n')
    result.close()

def subscriber():
    rospy.init_node('time_subscriber', anonymous=True)
    rospy.Subscriber('hw1_time', String, callback)

    rospy.spin()

if __name__ == '__main__':
    subscriber()
