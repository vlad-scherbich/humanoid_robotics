# curpp
Columbia University Robotics Pick and Place - A wrapper around the Moveit! Pick and Place pipeline

## Setup
Import this folder into the `src` directory of your ros workspace and build your workspace:
```bash
$ catkin build
```

This package requires ipdb and packages that are all included in ros-kinetic-desktop-full

## Usage
```python
import curpp
import rospy
import graspit_interface.msg
import geometry_msgs.msg
import tf

grasping_controller = curpp.MoveitPickPlaceInterface(
    arm_name="arm",
    gripper_name="gripper",
    grasp_approach_tran_frame="/approach_tran",
    analyzer_planner_id='[PRMkConfigDefault]',
    execution_planner_id='[BiRRTkConfigDefault]',
    allowed_analyzing_time=2,
    allowed_execution_time=8
)

object_name = "block0"
graspit_grasp = graspit_interface.msg.Grasp()
tf_listener = tf.TransformListener()

pre_grasp_approach_direction = geometry_msgs.msg.Vector3Stamped()
pre_grasp_approach_direction.header.frame_id = rospy.get_param("pre_grasp_approach_direction_frame_id")
pre_grasp_approach_direction.vector.x = rospy.get_param("pre_grasp_approach_direction_x")
pre_grasp_approach_direction.vector.y = rospy.get_param("pre_grasp_approach_direction_y")
pre_grasp_approach_direction.vector.z = rospy.get_param("pre_grasp_approach_direction_z")

post_grasp_retreat_direction = geometry_msgs.msg.Vector3Stamped()
post_grasp_retreat_direction.header.frame_id = rospy.get_param("post_grasp_retreat_direction_frame_id")
post_grasp_retreat_direction.vector.x = rospy.get_param("post_grasp_retreat_direction_x")
post_grasp_retreat_direction.vector.y = rospy.get_param("post_grasp_retreat_direction_y")
post_grasp_retreat_direction.vector.z = rospy.get_param("post_grasp_retreat_direction_z")

moveit_grasp_msg = curpp.graspit_grasp_to_moveit_grasp(
    object_name=object_name,
    graspit_grasp_msg=graspit_grasp,
    listener=tf_listener,
    grasp_tran_frame_name='/approach_tran',
    end_effector_link=grasping_controller.get_end_effector_link(),

    pre_grasp_goal_point_effort=rospy.get_param("pre_grasp_goal_point_effort"),
    pre_grasp_goal_point_positions=rospy.get_param("pre_grasp_goal_point_positions"),
    pre_grasp_goal_point_time_from_start_secs=rospy.get_param("pre_grasp_goal_point_time_from_start_secs"),
    pre_grasp_joint_names=rospy.get_param("pre_grasp_joint_names"),

    grasp_goal_point_effort=rospy.get_param("grasp_goal_point_effort"),
    grasp_goal_point_positions=rospy.get_param("grasp_goal_point_positions"),
    grasp_goal_point_time_from_start_secs=rospy.get_param("grasp_goal_point_time_from_start_secs"),

    grasp_posture_joint_names=rospy.get_param("grasp_posture_joint_names"),

    pre_grasp_approach_min_distance=rospy.get_param("pre_grasp_approach_min_distance"),
    pre_grasp_approach_desired_distance=rospy.get_param("pre_grasp_approach_desired_distance"),
    pre_grasp_approach_direction=pre_grasp_approach_direction,

    post_grasp_retreat_min_distance=rospy.get_param("post_grasp_retreat_min_distance"),
    post_grasp_retreat_desired_distance=rospy.get_param("post_grasp_retreat_desired_distance"),
    post_grasp_retreat_direction=post_grasp_retreat_direction,

    max_contact_force=rospy.get_param("max_contact_force")
)

# Execute pick on block
success, pick_result = grasping_controller.execute_moveit_grasp(object_name, moveit_grasp_msg)

if not success:
    error_code = curpp.moveit_error_code_to_string(pick_result.error_code)
    rospy.logerr("Failed to execute pick. Reason: {}".format(error_code))
else:
    rospy.loginfo("Successfully executed pick")
```