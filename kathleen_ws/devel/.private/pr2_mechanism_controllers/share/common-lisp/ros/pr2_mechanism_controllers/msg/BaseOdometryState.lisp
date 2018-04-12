; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-msg)


;//! \htmlinclude BaseOdometryState.msg.html

(cl:defclass <BaseOdometryState> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (wheel_link_names
    :reader wheel_link_names
    :initarg :wheel_link_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (drive_constraint_errors
    :reader drive_constraint_errors
    :initarg :drive_constraint_errors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (longitudinal_slip_constraint_errors
    :reader longitudinal_slip_constraint_errors
    :initarg :longitudinal_slip_constraint_errors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BaseOdometryState (<BaseOdometryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseOdometryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseOdometryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-msg:<BaseOdometryState> is deprecated: use pr2_mechanism_controllers-msg:BaseOdometryState instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <BaseOdometryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:velocity-val is deprecated.  Use pr2_mechanism_controllers-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'wheel_link_names-val :lambda-list '(m))
(cl:defmethod wheel_link_names-val ((m <BaseOdometryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:wheel_link_names-val is deprecated.  Use pr2_mechanism_controllers-msg:wheel_link_names instead.")
  (wheel_link_names m))

(cl:ensure-generic-function 'drive_constraint_errors-val :lambda-list '(m))
(cl:defmethod drive_constraint_errors-val ((m <BaseOdometryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:drive_constraint_errors-val is deprecated.  Use pr2_mechanism_controllers-msg:drive_constraint_errors instead.")
  (drive_constraint_errors m))

(cl:ensure-generic-function 'longitudinal_slip_constraint_errors-val :lambda-list '(m))
(cl:defmethod longitudinal_slip_constraint_errors-val ((m <BaseOdometryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:longitudinal_slip_constraint_errors-val is deprecated.  Use pr2_mechanism_controllers-msg:longitudinal_slip_constraint_errors instead.")
  (longitudinal_slip_constraint_errors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseOdometryState>) ostream)
  "Serializes a message object of type '<BaseOdometryState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_link_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'wheel_link_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drive_constraint_errors))))
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
   (cl:slot-value msg 'drive_constraint_errors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'longitudinal_slip_constraint_errors))))
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
   (cl:slot-value msg 'longitudinal_slip_constraint_errors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseOdometryState>) istream)
  "Deserializes a message object of type '<BaseOdometryState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_link_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_link_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drive_constraint_errors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drive_constraint_errors)))
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
  (cl:setf (cl:slot-value msg 'longitudinal_slip_constraint_errors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'longitudinal_slip_constraint_errors)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseOdometryState>)))
  "Returns string type for a message object of type '<BaseOdometryState>"
  "pr2_mechanism_controllers/BaseOdometryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseOdometryState)))
  "Returns string type for a message object of type 'BaseOdometryState"
  "pr2_mechanism_controllers/BaseOdometryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseOdometryState>)))
  "Returns md5sum for a message object of type '<BaseOdometryState>"
  "8a483e137ebc37abafa4c26549091dd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseOdometryState)))
  "Returns md5sum for a message object of type 'BaseOdometryState"
  "8a483e137ebc37abafa4c26549091dd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseOdometryState>)))
  "Returns full string definition for message of type '<BaseOdometryState>"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%string[] wheel_link_names~%float64[] drive_constraint_errors~%float64[] longitudinal_slip_constraint_errors~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseOdometryState)))
  "Returns full string definition for message of type 'BaseOdometryState"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%string[] wheel_link_names~%float64[] drive_constraint_errors~%float64[] longitudinal_slip_constraint_errors~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseOdometryState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_link_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drive_constraint_errors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'longitudinal_slip_constraint_errors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseOdometryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseOdometryState
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':wheel_link_names (wheel_link_names msg))
    (cl:cons ':drive_constraint_errors (drive_constraint_errors msg))
    (cl:cons ':longitudinal_slip_constraint_errors (longitudinal_slip_constraint_errors msg))
))
