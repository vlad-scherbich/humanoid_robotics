; Auto-generated. Do not edit!


(cl:in-package pr2_tilt_laser_interface-msg)


;//! \htmlinclude GetSnapshotGoal.msg.html

(cl:defclass <GetSnapshotGoal> (roslisp-msg-protocol:ros-message)
  ((start_angle
    :reader start_angle
    :initarg :start_angle
    :type cl:float
    :initform 0.0)
   (end_angle
    :reader end_angle
    :initarg :end_angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (hi_fidelity
    :reader hi_fidelity
    :initarg :hi_fidelity
    :type cl:boolean
    :initform cl:nil)
   (continuous
    :reader continuous
    :initarg :continuous
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetSnapshotGoal (<GetSnapshotGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSnapshotGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSnapshotGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_tilt_laser_interface-msg:<GetSnapshotGoal> is deprecated: use pr2_tilt_laser_interface-msg:GetSnapshotGoal instead.")))

(cl:ensure-generic-function 'start_angle-val :lambda-list '(m))
(cl:defmethod start_angle-val ((m <GetSnapshotGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_tilt_laser_interface-msg:start_angle-val is deprecated.  Use pr2_tilt_laser_interface-msg:start_angle instead.")
  (start_angle m))

(cl:ensure-generic-function 'end_angle-val :lambda-list '(m))
(cl:defmethod end_angle-val ((m <GetSnapshotGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_tilt_laser_interface-msg:end_angle-val is deprecated.  Use pr2_tilt_laser_interface-msg:end_angle instead.")
  (end_angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GetSnapshotGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_tilt_laser_interface-msg:speed-val is deprecated.  Use pr2_tilt_laser_interface-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'hi_fidelity-val :lambda-list '(m))
(cl:defmethod hi_fidelity-val ((m <GetSnapshotGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_tilt_laser_interface-msg:hi_fidelity-val is deprecated.  Use pr2_tilt_laser_interface-msg:hi_fidelity instead.")
  (hi_fidelity m))

(cl:ensure-generic-function 'continuous-val :lambda-list '(m))
(cl:defmethod continuous-val ((m <GetSnapshotGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_tilt_laser_interface-msg:continuous-val is deprecated.  Use pr2_tilt_laser_interface-msg:continuous instead.")
  (continuous m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSnapshotGoal>) ostream)
  "Serializes a message object of type '<GetSnapshotGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hi_fidelity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continuous) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSnapshotGoal>) istream)
  "Deserializes a message object of type '<GetSnapshotGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'hi_fidelity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'continuous) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSnapshotGoal>)))
  "Returns string type for a message object of type '<GetSnapshotGoal>"
  "pr2_tilt_laser_interface/GetSnapshotGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSnapshotGoal)))
  "Returns string type for a message object of type 'GetSnapshotGoal"
  "pr2_tilt_laser_interface/GetSnapshotGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSnapshotGoal>)))
  "Returns md5sum for a message object of type '<GetSnapshotGoal>"
  "464673531a0e6172d0d965e354c952f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSnapshotGoal)))
  "Returns md5sum for a message object of type 'GetSnapshotGoal"
  "464673531a0e6172d0d965e354c952f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSnapshotGoal>)))
  "Returns full string definition for message of type '<GetSnapshotGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%# We always want to command. Don't need this bool~%# bool command_laser   # True: Use the command below. False: Use existing profile~%float32 start_angle~%float32 end_angle~%float32 speed~%bool hi_fidelity~%bool continuous~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSnapshotGoal)))
  "Returns full string definition for message of type 'GetSnapshotGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%# We always want to command. Don't need this bool~%# bool command_laser   # True: Use the command below. False: Use existing profile~%float32 start_angle~%float32 end_angle~%float32 speed~%bool hi_fidelity~%bool continuous~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSnapshotGoal>))
  (cl:+ 0
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSnapshotGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSnapshotGoal
    (cl:cons ':start_angle (start_angle msg))
    (cl:cons ':end_angle (end_angle msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':hi_fidelity (hi_fidelity msg))
    (cl:cons ':continuous (continuous msg))
))
