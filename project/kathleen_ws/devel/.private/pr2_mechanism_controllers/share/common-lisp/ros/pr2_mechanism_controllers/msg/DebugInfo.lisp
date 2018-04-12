; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-msg)


;//! \htmlinclude DebugInfo.msg.html

(cl:defclass <DebugInfo> (roslisp-msg-protocol:ros-message)
  ((timing
    :reader timing
    :initarg :timing
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (input_valid
    :reader input_valid
    :initarg :input_valid
    :type cl:boolean
    :initform cl:nil)
   (residual
    :reader residual
    :initarg :residual
    :type cl:float
    :initform 0.0))
)

(cl:defclass DebugInfo (<DebugInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-msg:<DebugInfo> is deprecated: use pr2_mechanism_controllers-msg:DebugInfo instead.")))

(cl:ensure-generic-function 'timing-val :lambda-list '(m))
(cl:defmethod timing-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:timing-val is deprecated.  Use pr2_mechanism_controllers-msg:timing instead.")
  (timing m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:sequence-val is deprecated.  Use pr2_mechanism_controllers-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'input_valid-val :lambda-list '(m))
(cl:defmethod input_valid-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:input_valid-val is deprecated.  Use pr2_mechanism_controllers-msg:input_valid instead.")
  (input_valid m))

(cl:ensure-generic-function 'residual-val :lambda-list '(m))
(cl:defmethod residual-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:residual-val is deprecated.  Use pr2_mechanism_controllers-msg:residual instead.")
  (residual m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugInfo>) ostream)
  "Serializes a message object of type '<DebugInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timing))))
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
   (cl:slot-value msg 'timing))
  (cl:let* ((signed (cl:slot-value msg 'sequence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'input_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'residual))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugInfo>) istream)
  "Deserializes a message object of type '<DebugInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timing)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'input_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'residual) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugInfo>)))
  "Returns string type for a message object of type '<DebugInfo>"
  "pr2_mechanism_controllers/DebugInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugInfo)))
  "Returns string type for a message object of type 'DebugInfo"
  "pr2_mechanism_controllers/DebugInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugInfo>)))
  "Returns md5sum for a message object of type '<DebugInfo>"
  "6281356ce897e33da024b8eb319460f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugInfo)))
  "Returns md5sum for a message object of type 'DebugInfo"
  "6281356ce897e33da024b8eb319460f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugInfo>)))
  "Returns full string definition for message of type '<DebugInfo>"
  (cl:format cl:nil "float64[] timing~%int32 sequence~%bool input_valid~%float64 residual~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugInfo)))
  "Returns full string definition for message of type 'DebugInfo"
  (cl:format cl:nil "float64[] timing~%int32 sequence~%bool input_valid~%float64 residual~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugInfo
    (cl:cons ':timing (timing msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':input_valid (input_valid msg))
    (cl:cons ':residual (residual msg))
))
