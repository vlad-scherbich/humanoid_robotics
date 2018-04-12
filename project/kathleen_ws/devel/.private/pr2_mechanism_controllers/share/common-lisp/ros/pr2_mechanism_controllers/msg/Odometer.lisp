; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-msg)


;//! \htmlinclude Odometer.msg.html

(cl:defclass <Odometer> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Odometer (<Odometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-msg:<Odometer> is deprecated: use pr2_mechanism_controllers-msg:Odometer instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Odometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:distance-val is deprecated.  Use pr2_mechanism_controllers-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Odometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:angle-val is deprecated.  Use pr2_mechanism_controllers-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odometer>) ostream)
  "Serializes a message object of type '<Odometer>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odometer>) istream)
  "Deserializes a message object of type '<Odometer>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odometer>)))
  "Returns string type for a message object of type '<Odometer>"
  "pr2_mechanism_controllers/Odometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odometer)))
  "Returns string type for a message object of type 'Odometer"
  "pr2_mechanism_controllers/Odometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odometer>)))
  "Returns md5sum for a message object of type '<Odometer>"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odometer)))
  "Returns md5sum for a message object of type 'Odometer"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odometer>)))
  "Returns full string definition for message of type '<Odometer>"
  (cl:format cl:nil "float64 distance #total distance traveled (meters)~%float64 angle #total angle traveled (radians)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odometer)))
  "Returns full string definition for message of type 'Odometer"
  (cl:format cl:nil "float64 distance #total distance traveled (meters)~%float64 angle #total angle traveled (radians)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odometer>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odometer>))
  "Converts a ROS message object to a list"
  (cl:list 'Odometer
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
))
