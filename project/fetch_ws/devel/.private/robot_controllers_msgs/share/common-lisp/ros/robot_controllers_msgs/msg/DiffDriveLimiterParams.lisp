; Auto-generated. Do not edit!


(cl:in-package robot_controllers_msgs-msg)


;//! \htmlinclude DiffDriveLimiterParams.msg.html

(cl:defclass <DiffDriveLimiterParams> (roslisp-msg-protocol:ros-message)
  ((max_linear_velocity
    :reader max_linear_velocity
    :initarg :max_linear_velocity
    :type cl:float
    :initform 0.0)
   (max_linear_acceleration
    :reader max_linear_acceleration
    :initarg :max_linear_acceleration
    :type cl:float
    :initform 0.0)
   (max_angular_velocity
    :reader max_angular_velocity
    :initarg :max_angular_velocity
    :type cl:float
    :initform 0.0)
   (max_angular_acceleration
    :reader max_angular_acceleration
    :initarg :max_angular_acceleration
    :type cl:float
    :initform 0.0)
   (max_wheel_velocity
    :reader max_wheel_velocity
    :initarg :max_wheel_velocity
    :type cl:float
    :initform 0.0)
   (track_width
    :reader track_width
    :initarg :track_width
    :type cl:float
    :initform 0.0)
   (angular_velocity_limits_linear_velocity
    :reader angular_velocity_limits_linear_velocity
    :initarg :angular_velocity_limits_linear_velocity
    :type cl:boolean
    :initform cl:nil)
   (scale_to_wheel_velocity_limits
    :reader scale_to_wheel_velocity_limits
    :initarg :scale_to_wheel_velocity_limits
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DiffDriveLimiterParams (<DiffDriveLimiterParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiffDriveLimiterParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiffDriveLimiterParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_controllers_msgs-msg:<DiffDriveLimiterParams> is deprecated: use robot_controllers_msgs-msg:DiffDriveLimiterParams instead.")))

(cl:ensure-generic-function 'max_linear_velocity-val :lambda-list '(m))
(cl:defmethod max_linear_velocity-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:max_linear_velocity-val is deprecated.  Use robot_controllers_msgs-msg:max_linear_velocity instead.")
  (max_linear_velocity m))

(cl:ensure-generic-function 'max_linear_acceleration-val :lambda-list '(m))
(cl:defmethod max_linear_acceleration-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:max_linear_acceleration-val is deprecated.  Use robot_controllers_msgs-msg:max_linear_acceleration instead.")
  (max_linear_acceleration m))

(cl:ensure-generic-function 'max_angular_velocity-val :lambda-list '(m))
(cl:defmethod max_angular_velocity-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:max_angular_velocity-val is deprecated.  Use robot_controllers_msgs-msg:max_angular_velocity instead.")
  (max_angular_velocity m))

(cl:ensure-generic-function 'max_angular_acceleration-val :lambda-list '(m))
(cl:defmethod max_angular_acceleration-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:max_angular_acceleration-val is deprecated.  Use robot_controllers_msgs-msg:max_angular_acceleration instead.")
  (max_angular_acceleration m))

(cl:ensure-generic-function 'max_wheel_velocity-val :lambda-list '(m))
(cl:defmethod max_wheel_velocity-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:max_wheel_velocity-val is deprecated.  Use robot_controllers_msgs-msg:max_wheel_velocity instead.")
  (max_wheel_velocity m))

(cl:ensure-generic-function 'track_width-val :lambda-list '(m))
(cl:defmethod track_width-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:track_width-val is deprecated.  Use robot_controllers_msgs-msg:track_width instead.")
  (track_width m))

(cl:ensure-generic-function 'angular_velocity_limits_linear_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity_limits_linear_velocity-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:angular_velocity_limits_linear_velocity-val is deprecated.  Use robot_controllers_msgs-msg:angular_velocity_limits_linear_velocity instead.")
  (angular_velocity_limits_linear_velocity m))

(cl:ensure-generic-function 'scale_to_wheel_velocity_limits-val :lambda-list '(m))
(cl:defmethod scale_to_wheel_velocity_limits-val ((m <DiffDriveLimiterParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:scale_to_wheel_velocity_limits-val is deprecated.  Use robot_controllers_msgs-msg:scale_to_wheel_velocity_limits instead.")
  (scale_to_wheel_velocity_limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiffDriveLimiterParams>) ostream)
  "Serializes a message object of type '<DiffDriveLimiterParams>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_angular_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_wheel_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'angular_velocity_limits_linear_velocity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'scale_to_wheel_velocity_limits) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiffDriveLimiterParams>) istream)
  "Deserializes a message object of type '<DiffDriveLimiterParams>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_wheel_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'angular_velocity_limits_linear_velocity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'scale_to_wheel_velocity_limits) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiffDriveLimiterParams>)))
  "Returns string type for a message object of type '<DiffDriveLimiterParams>"
  "robot_controllers_msgs/DiffDriveLimiterParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiffDriveLimiterParams)))
  "Returns string type for a message object of type 'DiffDriveLimiterParams"
  "robot_controllers_msgs/DiffDriveLimiterParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiffDriveLimiterParams>)))
  "Returns md5sum for a message object of type '<DiffDriveLimiterParams>"
  "c438ebbdf2d3d45fdfb67f5ba9e6ca3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiffDriveLimiterParams)))
  "Returns md5sum for a message object of type 'DiffDriveLimiterParams"
  "c438ebbdf2d3d45fdfb67f5ba9e6ca3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiffDriveLimiterParams>)))
  "Returns full string definition for message of type '<DiffDriveLimiterParams>"
  (cl:format cl:nil "# Various parameters for diff driver base velocity and acceleration limiter~%# This message allows limits that would imposed by diff_drive_base~%# to be understood by other components without needing access to ~%# same set of rosparams, or URDF settings~%~%float64 max_linear_velocity~%float64 max_linear_acceleration~%~%float64 max_angular_velocity~%float64 max_angular_acceleration~%~%# Wheel velocity limit are linear velocity (m/s) not angular velocities (rad/s)~%float64 max_wheel_velocity~%~%# distance between two wheels ~%# used for calculating wheel velocities from angular velocity~%float64 track_width~%~%# If true limiter will reduce linear velocity~%# when angular velocity is beyond limit so~%# so path curvature is maintained~%bool angular_velocity_limits_linear_velocity~%~%# If true, linear and angular velocities will ~%# scaled if wheel velocities beyond limits~%# so path curvature is maintained~%# otherwise wheel velocities are limited independently~%bool scale_to_wheel_velocity_limits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiffDriveLimiterParams)))
  "Returns full string definition for message of type 'DiffDriveLimiterParams"
  (cl:format cl:nil "# Various parameters for diff driver base velocity and acceleration limiter~%# This message allows limits that would imposed by diff_drive_base~%# to be understood by other components without needing access to ~%# same set of rosparams, or URDF settings~%~%float64 max_linear_velocity~%float64 max_linear_acceleration~%~%float64 max_angular_velocity~%float64 max_angular_acceleration~%~%# Wheel velocity limit are linear velocity (m/s) not angular velocities (rad/s)~%float64 max_wheel_velocity~%~%# distance between two wheels ~%# used for calculating wheel velocities from angular velocity~%float64 track_width~%~%# If true limiter will reduce linear velocity~%# when angular velocity is beyond limit so~%# so path curvature is maintained~%bool angular_velocity_limits_linear_velocity~%~%# If true, linear and angular velocities will ~%# scaled if wheel velocities beyond limits~%# so path curvature is maintained~%# otherwise wheel velocities are limited independently~%bool scale_to_wheel_velocity_limits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiffDriveLimiterParams>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiffDriveLimiterParams>))
  "Converts a ROS message object to a list"
  (cl:list 'DiffDriveLimiterParams
    (cl:cons ':max_linear_velocity (max_linear_velocity msg))
    (cl:cons ':max_linear_acceleration (max_linear_acceleration msg))
    (cl:cons ':max_angular_velocity (max_angular_velocity msg))
    (cl:cons ':max_angular_acceleration (max_angular_acceleration msg))
    (cl:cons ':max_wheel_velocity (max_wheel_velocity msg))
    (cl:cons ':track_width (track_width msg))
    (cl:cons ':angular_velocity_limits_linear_velocity (angular_velocity_limits_linear_velocity msg))
    (cl:cons ':scale_to_wheel_velocity_limits (scale_to_wheel_velocity_limits msg))
))
