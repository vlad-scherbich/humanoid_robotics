#!/user/bin/env python 

from graspit_commander import GraspitCommander 
gc = GraspitCommander() 

ROS_SERVICE_TIMEOUT = 1

#Refresh World 
gc.clearWorld()

#Load PlannerMug environment and grasp 
gc.loadWorld("plannerMug")
gc.approachToContact()
gc.autoGrasp()

#Print position 
robot = gc.getRobot(0)
print(robot)
