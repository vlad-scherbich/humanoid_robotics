import moveit_msgs.msg
import geometry_msgs.msg
import trajectory_msgs.msg
import graspit_interface.msg
import tf
import rospy
import tf_conversions
import numpy as np
import ipdb
import typing


def moveit_error_code_to_string(moveit_error_code):
    # type: (moveit_msgs.msg.MoveItErrorCodes) -> str
    return {
        # overall behavior
        1: "SUCCESS",
        99999: "FAILURE",
        -1: "PLANNING_FAILED",
        -2: "INVALID_MOTION_PLAN",
        -3: "MOTION_PLAN_INVALIDATED_BY_ENVIRONMENT_CHANGE",
        -4: "CONTROL_FAILED",
        -5: "UNABLE_TO_AQUIRE_SENSOR_DATA",
        -6: "TIMED_OUT",
        -7: "PREEMPTED",

        # planning & kinematics request errors
        -10: "START_STATE_IN_COLLISION",
        -11: "START_STATE_VIOLATES_PATH_CONSTRAINTS",
        -12: "GOAL_IN_COLLISION",
        -13: "GOAL_VIOLATES_PATH_CONSTRAINTS",
        -14: "GOAL_CONSTRAINTS_VIOLATED",
        -15: "INVALID_GROUP_NAME",
        -16: "INVALID_GOAL_CONSTRAINTS",
        -17: "INVALID_ROBOT_STATE",
        -18: "INVALID_LINK_NAME",
        -19: "INVALID_OBJECT_NAME",

        # system errors
        -21: "FRAME_TRANSFORM_FAILURE",
        -22: "COLLISION_CHECKING_UNAVAILABLE",
        -23: "ROBOT_STATE_STALE",
        -24: "SENSOR_INFO_STALE",

        # kinematics errors
        -31: "NO_IK_SOLUTION"

    }.get(moveit_error_code.val, "Invalid Error")


def graspit_grasp_pose_to_moveit_grasp_pose(
        listener,                     # type: tf.TransformListener
        graspit_grasp_msg,            # type: graspit_interface.msg.Grasp
        end_effector_link,            # type: str
        grasp_frame                   # type: str
):
    # type: (...) -> geometry_msgs.msg.Pose
    """
    :param listener: A transformer for looking up the transformation
    :param graspit_grasp_msg: A graspit grasp message
    """

    try:
        listener.waitForTransform(
            grasp_frame,
            end_effector_link,
            rospy.Time(0),
            timeout=rospy.Duration(1)
        )

        at_to_ee_tran, at_to_ee_rot = listener.lookupTransform(
            grasp_frame,
            end_effector_link,
            rospy.Time()
        )

    except Exception as e:
        rospy.logerr("graspit_grasp_pose_to_moveit_grasp_pose::\n "
                     "Failed to find transform from {} to {}"
                     .format(grasp_frame, end_effector_link)
                     )
        ipdb.set_trace()

        return geometry_msgs.msg.Pose()

    graspit_grasp_msg_final_grasp_tran_matrix = tf_conversions.toMatrix(
        tf_conversions.fromMsg(graspit_grasp_msg.pose)
    )

    approach_tran_to_end_effector_tran_matrix = tf.TransformerROS().fromTranslationRotation(at_to_ee_tran, at_to_ee_rot)
    actual_ee_pose_matrix = np.dot(graspit_grasp_msg_final_grasp_tran_matrix, approach_tran_to_end_effector_tran_matrix)
    actual_ee_pose = tf_conversions.toMsg(tf_conversions.fromMatrix(actual_ee_pose_matrix))

    return actual_ee_pose


def get_approach_dir_in_ee_coords(
        listener,              # type: tf.TransformListener
        end_effector_link,     # type: str
        approach_dir_stamped   # type: geometry_msgs.msg.Vector3Stamped
):
    # type: (...) -> geometry_msgs.msg.Vector3Stamped
    try:
        # Wait for transform from approach_dir -> end_effector
        listener.waitForTransform(
            approach_dir_stamped.header.frame_id,
            end_effector_link,
            rospy.Time(),
            timeout=rospy.Duration(2))

        # Acquire transform from approach_dir -> end_effector
        listener.lookupTransform(
            approach_dir_stamped.header.frame_id,
            end_effector_link,
            rospy.Time())

    except Exception as e:
        rospy.logerr("Failed to find transform from {} to {}".format(
            approach_dir_stamped.header.frame_id, end_effector_link
        ))
        ipdb.set_trace()

    approach_dir_transformed = listener.transformVector3(
        end_effector_link,
        approach_dir_stamped
    )

    return approach_dir_transformed


def graspit_grasp_to_moveit_grasp(
        object_name,                                                # type: str
        graspit_grasp_msg,                                          # type: graspit_interface.msg.Grasp
        listener,                                                   # type: tf.TransformListener
        grasp_tran_frame_name,                                      # type: str
        end_effector_link,                                          # type: str

        pre_grasp_goal_point_effort,                                # type: typing.List[int]
        pre_grasp_goal_point_positions,                             # type: typing.List[float]
        pre_grasp_goal_point_time_from_start_secs,                  # type: int
        pre_grasp_joint_names,                                      # type: typing.List[str]

        grasp_goal_point_effort,                                    # type: typing.List[int]
        grasp_goal_point_positions,                                 # type: typing.List[float]
        grasp_goal_point_time_from_start_secs,                      # type: int

        grasp_posture_joint_names,                                  # type: typing.List[str]

        pre_grasp_approach_min_distance,                            # type: float
        pre_grasp_approach_desired_distance,                        # type: float
        pre_grasp_approach_direction,                               # type: geometry_msgs.msg.Vector3Stamped

        post_grasp_retreat_min_distance,                            # type: float
        post_grasp_retreat_desired_distance,                        # type: float
        post_grasp_retreat_direction,                               # type: geometry_msgs.msg.Vector3Stamped

        max_contact_force                                           # type: int
):
    # type: (...) -> moveit_msgs.msg.Grasp

    moveit_grasp = moveit_msgs.msg.Grasp()
    # # This message contains a description of a grasp that would be used
    # # with a particular end-effector to grasp an object, including how to
    # # approach it, grip it, etc.  This message does not contain any
    # # information about a "grasp point" (a position ON the object).
    # # Whatever generates this message should have already combined
    # # information about grasp points with information about the geometry
    # # of the end-effector to compute the grasp_pose in this message.
    #
    # # A name for this grasp
    # string id
    #
    moveit_grasp.id = str(graspit_grasp_msg.__hash__())

    # # The internal posture of the hand for the pre-grasp
    # # only positions are used
    #
    # trajectory_msgs/JointTrajectory pre_grasp_posture
    #
    pre_grasp_goal_point = trajectory_msgs.msg.JointTrajectoryPoint()
    pre_grasp_goal_point.effort = pre_grasp_goal_point_effort
    pre_grasp_goal_point.positions = pre_grasp_goal_point_positions
    pre_grasp_goal_point.time_from_start.secs = pre_grasp_goal_point_time_from_start_secs

    moveit_grasp.pre_grasp_posture.points.append(pre_grasp_goal_point)
    moveit_grasp.pre_grasp_posture.joint_names = pre_grasp_joint_names

    # # The internal posture of the hand for the grasp
    # # positions and efforts are used
    #
    # trajectory_msgs/JointTrajectory grasp_posture
    #
    grasp_goal_point = trajectory_msgs.msg.JointTrajectoryPoint()
    grasp_goal_point.effort = grasp_goal_point_effort
    grasp_goal_point.positions = grasp_goal_point_positions
    grasp_goal_point.time_from_start.secs = grasp_goal_point_time_from_start_secs

    moveit_grasp.grasp_posture.points.append(grasp_goal_point)
    moveit_grasp.grasp_posture.joint_names = grasp_posture_joint_names

    # # The position of the end-effector for the grasp.  This is the pose of
    # # the "parent_link" of the end-effector, not actually the pose of any
    # # link *in* the end-effector.  Typically this would be the pose of the
    # # most distal wrist link before the hand (end-effector) links began.
    #
    # geometry_msgs/PoseStamped grasp_pose
    #
    ee_pose = graspit_grasp_pose_to_moveit_grasp_pose(
        listener,
        graspit_grasp_msg,
        end_effector_link,
        grasp_tran_frame_name
    )
    moveit_grasp.grasp_pose.pose = ee_pose
    moveit_grasp.grasp_pose.header.frame_id = object_name

    # # The estimated probability of success for this grasp, or some other
    # # measure of how "good" it is.
    #
    # float64 grasp_quality
    #
    moveit_grasp.grasp_quality = graspit_grasp_msg.epsilon_quality

    # # The approach direction to take before picking an object
    #
    # GripperTranslation pre_grasp_approach
    #
    moveit_grasp.pre_grasp_approach.min_distance = pre_grasp_approach_min_distance
    moveit_grasp.pre_grasp_approach.desired_distance = pre_grasp_approach_desired_distance
    moveit_grasp.pre_grasp_approach.direction = get_approach_dir_in_ee_coords(
        listener,
        end_effector_link,
        pre_grasp_approach_direction
    )
    # rospy.loginfo("Approach dir in ee coords (direction: {})".format(moveit_grasp.pre_grasp_approach.direction))

    # # The retreat direction to take after a grasp has been completed (object is attached)
    #
    # GripperTranslation post_grasp_retreat
    #
    moveit_grasp.post_grasp_retreat.min_distance = post_grasp_retreat_min_distance
    moveit_grasp.post_grasp_retreat.desired_distance = post_grasp_retreat_desired_distance
    moveit_grasp.post_grasp_retreat.direction = post_grasp_retreat_direction

    # # The retreat motion to perform when releasing the object; this information
    # # is not necessary for the grasp itself, but when releasing the object,
    # # the information will be necessary. The grasp used to perform a pickup
    # # is returned as part of the result, so this information is available for
    # # later use.
    #
    # GripperTranslation post_place_retreat
    #

    # # the maximum contact force to use while grasping (<=0 to disable)
    #
    # float32 max_contact_force
    #
    moveit_grasp.max_contact_force = max_contact_force

    # # an optional list of obstacles that we have semantic information about
    # # and that can be touched/pushed/moved in the course of grasping
    #
    # string[] allowed_touch_objects
    #
    moveit_grasp.allowed_touch_objects = []

    return moveit_grasp

