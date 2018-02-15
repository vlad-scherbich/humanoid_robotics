#!/usr/bin/env python

from geometry_msgs.msg import Pose

from graspit_commander import GraspitCommander 
gc = GraspitCommander() 

ROS_SERVICE_TIMEOUT = 1

# Refresh world  
gc.clearWorld()

gc.importRobot('fetch_gripper')
gc.autoOpen()

cupPose = Pose()
cupPose.position.x = 0.05
cupPose.position.y = 0
cupPose.position.z = 0
cupPose.orientation.x = 1.6
cupPose.orientation.y = -0.3
cupPose.orientation.z = 0.1
cupPose.orientation.w = 1.0
gc.importGraspableBody('mug', cupPose)
gc.findInitialContact()
gc.autoGrasp()
pose = gc.getRobot(0)
print(pose)
