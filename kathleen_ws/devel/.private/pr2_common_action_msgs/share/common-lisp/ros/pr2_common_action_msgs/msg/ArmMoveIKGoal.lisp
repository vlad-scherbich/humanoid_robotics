; Auto-generated. Do not edit!


(cl:in-package pr2_common_action_msgs-msg)


;//! \htmlinclude ArmMoveIKGoal.msg.html

(cl:defclass <ArmMoveIKGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (tool_frame
    :reader tool_frame
    :initarg :tool_frame
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (ik_seed
    :reader ik_seed
    :initarg :ik_seed
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (ik_timeout
    :reader ik_timeout
    :initarg :ik_timeout
    :type cl:real
    :initform 0)
   (move_duration
    :reader move_duration
    :initarg :move_duration
    :type cl:real
    :initform 0))
)

(cl:defclass ArmMoveIKGoal (<ArmMoveIKGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMoveIKGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMoveIKGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_common_action_msgs-msg:<ArmMoveIKGoal> is deprecated: use pr2_common_action_msgs-msg:ArmMoveIKGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ArmMoveIKGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_common_action_msgs-msg:pose-val is deprecated.  Use pr2_common_action_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'tool_frame-val :lambda-list '(m))
(cl:defmethod tool_frame-val ((m <ArmMoveIKGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_common_action_msgs-msg:tool_frame-val is deprecated.  Use pr2_common_action_msgs-msg:tool_frame instead.")
  (tool_frame m))

(cl:ensure-generic-function 'ik_seed-val :lambda-list '(m))
(cl:defmethod ik_seed-val ((m <ArmMoveIKGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_common_action_msgs-msg:ik_seed-val is deprecated.  Use pr2_common_action_msgs-msg:ik_seed instead.")
  (ik_seed m))

(cl:ensure-generic-function 'ik_timeout-val :lambda-list '(m))
(cl:defmethod ik_timeout-val ((m <ArmMoveIKGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_common_action_msgs-msg:ik_timeout-val is deprecated.  Use pr2_common_action_msgs-msg:ik_timeout instead.")
  (ik_timeout m))

(cl:ensure-generic-function 'move_duration-val :lambda-list '(m))
(cl:defmethod move_duration-val ((m <ArmMoveIKGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_common_action_msgs-msg:move_duration-val is deprecated.  Use pr2_common_action_msgs-msg:move_duration instead.")
  (move_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMoveIKGoal>) ostream)
  "Serializes a message object of type '<ArmMoveIKGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tool_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_seed) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ik_timeout)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ik_timeout) (cl:floor (cl:slot-value msg 'ik_timeout)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'move_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'move_duration) (cl:floor (cl:slot-value msg 'move_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMoveIKGoal>) istream)
  "Deserializes a message object of type '<ArmMoveIKGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tool_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_seed) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ik_timeout) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMoveIKGoal>)))
  "Returns string type for a message object of type '<ArmMoveIKGoal>"
  "pr2_common_action_msgs/ArmMoveIKGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMoveIKGoal)))
  "Returns string type for a message object of type 'ArmMoveIKGoal"
  "pr2_common_action_msgs/ArmMoveIKGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMoveIKGoal>)))
  "Returns md5sum for a message object of type '<ArmMoveIKGoal>"
  "659cdac4f142756518faf4644a34bdda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMoveIKGoal)))
  "Returns md5sum for a message object of type 'ArmMoveIKGoal"
  "659cdac4f142756518faf4644a34bdda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMoveIKGoal>)))
  "Returns full string definition for message of type '<ArmMoveIKGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# the desired pose of the tool frame~%geometry_msgs/PoseStamped pose~%~%# tool frame defauts to x_wrist_roll_link~%geometry_msgs/PoseStamped tool_frame~%~%# the joint space configuration to resolve redundancy~%sensor_msgs/JointState ik_seed~%~%duration ik_timeout~%duration move_duration~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMoveIKGoal)))
  "Returns full string definition for message of type 'ArmMoveIKGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# the desired pose of the tool frame~%geometry_msgs/PoseStamped pose~%~%# tool frame defauts to x_wrist_roll_link~%geometry_msgs/PoseStamped tool_frame~%~%# the joint space configuration to resolve redundancy~%sensor_msgs/JointState ik_seed~%~%duration ik_timeout~%duration move_duration~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMoveIKGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_seed))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMoveIKGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMoveIKGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':tool_frame (tool_frame msg))
    (cl:cons ':ik_seed (ik_seed msg))
    (cl:cons ':ik_timeout (ik_timeout msg))
    (cl:cons ':move_duration (move_duration msg))
))
