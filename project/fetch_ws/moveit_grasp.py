import geometry_msgs
import rospy
import tf

import curpp


def graspit_grasp_to_moveit_grasp(object_name, graspit_grasp):
        # type: (str, graspit_interface.msg.Grasp) -> moveit_msgs.msg.Grasp

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

	tf_listener = tf.TransformListener()
	
	grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")

	grasping_controller = curpp.MoveitPickPlaceInterface(
            arm_name=rospy.get_param("arm_move_group_name"),
            gripper_name=rospy.get_param("gripper_move_group_name"),
            grasp_approach_tran_frame=grasp_approach_tran_frame,
            analyzer_planner_id=rospy.get_param("analyzer_planner_id"),
            execution_planner_id=rospy.get_param("executor_planner_id"),
            allowed_analyzing_time=rospy.get_param("allowed_analyzing_time"),
            allowed_execution_time=rospy.get_param("allowed_execution_time")
        )

        moveit_grasp_msg = curpp.graspit_grasp_to_moveit_grasp(
            object_name=object_name,
            graspit_grasp_msg=graspit_grasp,
            listener=tf_listener,
            grasp_tran_frame_name=grasp_approach_tran_frame,
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

	return moveit_grasp_msg


grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")
grasping_controller = curpp.MoveitPickPlaceInterface(
            arm_name=rospy.get_param("arm_move_group_name"),
            gripper_name=rospy.get_param("gripper_move_group_name"),
            grasp_approach_tran_frame=grasp_approach_tran_frame,
            analyzer_planner_id=rospy.get_param("analyzer_planner_id"),
            execution_planner_id=rospy.get_param("executor_planner_id"),
            allowed_analyzing_time=rospy.get_param("allowed_analyzing_time"),
            allowed_execution_time=rospy.get_param("allowed_execution_time"))


# Convert graspit grasp to moveit grasp
graspit_grasp = graspit_grasps.grasps[0]
moveit_grasp_msg = graspit_grasp_to_moveit_grasp('spam', graspit_grasp)

# Execute pick on block
success, pick_result = grasping_controller.execute_moveit_grasp('spam', moveit_grasp_msg)
if not success:
	error_code = curpp.moveit_error_code_to_string(pick_result.error_code)
        rospy.logerr("Failed to execute pick. Reason: {}".format(error_code))



# markers
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Quaternion, Pose, Point, Vector3
from std_msgs.msg import Header, ColorRGBA


def _moveit_msg_to_marker(moveit_msg, id, duration=100, frame_id='spam'):
    position = moveit_msg.grasp_pose.pose.position
    orientation = moveit_msg.grasp_pose.pose.orientation
    marker = Marker(
	type=Marker.SPHERE,                            
	id=id, 
	lifetime=rospy.Duration(duration),                             
	pose=Pose(
		Point(position.x, position.y, position.z),
 		Quaternion(orientation.x, orientation.y, orientation.z, orientation.w)),                                              
	scale=Vector3(0.06, 0.06, 0.06),
	header=Header(frame_id=frame_id),           
	color=ColorRGBA(0.0, 1.0, 0.0, 0.8)
	)

    return marker

marker_publisher = rospy.Publisher('visualization_marker', Marker, queue_size=100)


for i, grasp in enumerate(graspit_grasps.grasps):
    moveit_grasp_msg = graspit_grasp_to_moveit_grasp('spam', grasp)
    #moveit_grasp_msg = graspit_grasp_to_moveit_grasp('base_link', grasp)

    marker = _moveit_msg_to_marker(moveit_grasp_msg, i, frame_id='spam')
    marker_publisher.publish(marker)       
             
    success, pick_result = grasping_controller.execute_moveit_grasp('spam', moveit_grasp_msg)
    if not success:
        error_code = curpp.moveit_error_code_to_string(pick_result.error_code)
    	rospy.logerr("Failed to execute pick. Reason: {}".format(error_code))


