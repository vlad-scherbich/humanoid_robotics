; Auto-generated. Do not edit!


(cl:in-package robot_mechanism_controllers-msg)


;//! \htmlinclude JTCartesianControllerState.msg.html

(cl:defclass <JTCartesianControllerState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (x_desi
    :reader x_desi
    :initarg :x_desi
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (x_desi_filtered
    :reader x_desi_filtered
    :initarg :x_desi_filtered
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (x_err
    :reader x_err
    :initarg :x_err
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (xd
    :reader xd
    :initarg :xd
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (xd_desi
    :reader xd_desi
    :initarg :xd_desi
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (F
    :reader F
    :initarg :F
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (tau_pose
    :reader tau_pose
    :initarg :tau_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tau_posture
    :reader tau_posture
    :initarg :tau_posture
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tau
    :reader tau
    :initarg :tau
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (J
    :reader J
    :initarg :J
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (N
    :reader N
    :initarg :N
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass JTCartesianControllerState (<JTCartesianControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JTCartesianControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JTCartesianControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_mechanism_controllers-msg:<JTCartesianControllerState> is deprecated: use robot_mechanism_controllers-msg:JTCartesianControllerState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:header-val is deprecated.  Use robot_mechanism_controllers-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:x-val is deprecated.  Use robot_mechanism_controllers-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'x_desi-val :lambda-list '(m))
(cl:defmethod x_desi-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:x_desi-val is deprecated.  Use robot_mechanism_controllers-msg:x_desi instead.")
  (x_desi m))

(cl:ensure-generic-function 'x_desi_filtered-val :lambda-list '(m))
(cl:defmethod x_desi_filtered-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:x_desi_filtered-val is deprecated.  Use robot_mechanism_controllers-msg:x_desi_filtered instead.")
  (x_desi_filtered m))

(cl:ensure-generic-function 'x_err-val :lambda-list '(m))
(cl:defmethod x_err-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:x_err-val is deprecated.  Use robot_mechanism_controllers-msg:x_err instead.")
  (x_err m))

(cl:ensure-generic-function 'xd-val :lambda-list '(m))
(cl:defmethod xd-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:xd-val is deprecated.  Use robot_mechanism_controllers-msg:xd instead.")
  (xd m))

(cl:ensure-generic-function 'xd_desi-val :lambda-list '(m))
(cl:defmethod xd_desi-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:xd_desi-val is deprecated.  Use robot_mechanism_controllers-msg:xd_desi instead.")
  (xd_desi m))

(cl:ensure-generic-function 'F-val :lambda-list '(m))
(cl:defmethod F-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:F-val is deprecated.  Use robot_mechanism_controllers-msg:F instead.")
  (F m))

(cl:ensure-generic-function 'tau_pose-val :lambda-list '(m))
(cl:defmethod tau_pose-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:tau_pose-val is deprecated.  Use robot_mechanism_controllers-msg:tau_pose instead.")
  (tau_pose m))

(cl:ensure-generic-function 'tau_posture-val :lambda-list '(m))
(cl:defmethod tau_posture-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:tau_posture-val is deprecated.  Use robot_mechanism_controllers-msg:tau_posture instead.")
  (tau_posture m))

(cl:ensure-generic-function 'tau-val :lambda-list '(m))
(cl:defmethod tau-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:tau-val is deprecated.  Use robot_mechanism_controllers-msg:tau instead.")
  (tau m))

(cl:ensure-generic-function 'J-val :lambda-list '(m))
(cl:defmethod J-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:J-val is deprecated.  Use robot_mechanism_controllers-msg:J instead.")
  (J m))

(cl:ensure-generic-function 'N-val :lambda-list '(m))
(cl:defmethod N-val ((m <JTCartesianControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_mechanism_controllers-msg:N-val is deprecated.  Use robot_mechanism_controllers-msg:N instead.")
  (N m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JTCartesianControllerState>) ostream)
  "Serializes a message object of type '<JTCartesianControllerState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_desi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_desi_filtered) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_err) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xd_desi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'F) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tau_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tau_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tau_posture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tau_posture))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tau))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tau))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'J) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'N) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JTCartesianControllerState>) istream)
  "Deserializes a message object of type '<JTCartesianControllerState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_desi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_desi_filtered) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_err) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xd_desi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'F) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tau_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tau_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tau_posture) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tau_posture)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tau) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tau)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'J) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'N) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JTCartesianControllerState>)))
  "Returns string type for a message object of type '<JTCartesianControllerState>"
  "robot_mechanism_controllers/JTCartesianControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JTCartesianControllerState)))
  "Returns string type for a message object of type 'JTCartesianControllerState"
  "robot_mechanism_controllers/JTCartesianControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JTCartesianControllerState>)))
  "Returns md5sum for a message object of type '<JTCartesianControllerState>"
  "6ecdaa599ea0d27643819ae4cd4c43d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JTCartesianControllerState)))
  "Returns md5sum for a message object of type 'JTCartesianControllerState"
  "6ecdaa599ea0d27643819ae4cd4c43d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JTCartesianControllerState>)))
  "Returns full string definition for message of type '<JTCartesianControllerState>"
  (cl:format cl:nil "Header header~%geometry_msgs/PoseStamped x~%geometry_msgs/PoseStamped x_desi~%geometry_msgs/PoseStamped x_desi_filtered~%geometry_msgs/Twist x_err~%geometry_msgs/Twist xd~%geometry_msgs/Twist xd_desi~%geometry_msgs/Wrench F~%float64[] tau_pose~%float64[] tau_posture~%float64[] tau~%std_msgs/Float64MultiArray J~%std_msgs/Float64MultiArray N~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JTCartesianControllerState)))
  "Returns full string definition for message of type 'JTCartesianControllerState"
  (cl:format cl:nil "Header header~%geometry_msgs/PoseStamped x~%geometry_msgs/PoseStamped x_desi~%geometry_msgs/PoseStamped x_desi_filtered~%geometry_msgs/Twist x_err~%geometry_msgs/Twist xd~%geometry_msgs/Twist xd_desi~%geometry_msgs/Wrench F~%float64[] tau_pose~%float64[] tau_posture~%float64[] tau~%std_msgs/Float64MultiArray J~%std_msgs/Float64MultiArray N~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JTCartesianControllerState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_desi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_desi_filtered))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_err))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xd_desi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'F))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tau_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tau_posture) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tau) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'J))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'N))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JTCartesianControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'JTCartesianControllerState
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':x_desi (x_desi msg))
    (cl:cons ':x_desi_filtered (x_desi_filtered msg))
    (cl:cons ':x_err (x_err msg))
    (cl:cons ':xd (xd msg))
    (cl:cons ':xd_desi (xd_desi msg))
    (cl:cons ':F (F msg))
    (cl:cons ':tau_pose (tau_pose msg))
    (cl:cons ':tau_posture (tau_posture msg))
    (cl:cons ':tau (tau msg))
    (cl:cons ':J (J msg))
    (cl:cons ':N (N msg))
))
