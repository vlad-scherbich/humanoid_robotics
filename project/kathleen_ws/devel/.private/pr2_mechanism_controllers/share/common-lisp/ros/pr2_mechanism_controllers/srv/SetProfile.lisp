; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-srv)


;//! \htmlinclude SetProfile-request.msg.html

(cl:defclass <SetProfile-request> (roslisp-msg-protocol:ros-message)
  ((UpperTurnaround
    :reader UpperTurnaround
    :initarg :UpperTurnaround
    :type cl:float
    :initform 0.0)
   (LowerTurnaround
    :reader LowerTurnaround
    :initarg :LowerTurnaround
    :type cl:float
    :initform 0.0)
   (upperDecelBuffer
    :reader upperDecelBuffer
    :initarg :upperDecelBuffer
    :type cl:float
    :initform 0.0)
   (lowerDecelBuffer
    :reader lowerDecelBuffer
    :initarg :lowerDecelBuffer
    :type cl:float
    :initform 0.0)
   (profile
    :reader profile
    :initarg :profile
    :type cl:float
    :initform 0.0)
   (period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0)
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetProfile-request (<SetProfile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProfile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProfile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-srv:<SetProfile-request> is deprecated: use pr2_mechanism_controllers-srv:SetProfile-request instead.")))

(cl:ensure-generic-function 'UpperTurnaround-val :lambda-list '(m))
(cl:defmethod UpperTurnaround-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:UpperTurnaround-val is deprecated.  Use pr2_mechanism_controllers-srv:UpperTurnaround instead.")
  (UpperTurnaround m))

(cl:ensure-generic-function 'LowerTurnaround-val :lambda-list '(m))
(cl:defmethod LowerTurnaround-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:LowerTurnaround-val is deprecated.  Use pr2_mechanism_controllers-srv:LowerTurnaround instead.")
  (LowerTurnaround m))

(cl:ensure-generic-function 'upperDecelBuffer-val :lambda-list '(m))
(cl:defmethod upperDecelBuffer-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:upperDecelBuffer-val is deprecated.  Use pr2_mechanism_controllers-srv:upperDecelBuffer instead.")
  (upperDecelBuffer m))

(cl:ensure-generic-function 'lowerDecelBuffer-val :lambda-list '(m))
(cl:defmethod lowerDecelBuffer-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:lowerDecelBuffer-val is deprecated.  Use pr2_mechanism_controllers-srv:lowerDecelBuffer instead.")
  (lowerDecelBuffer m))

(cl:ensure-generic-function 'profile-val :lambda-list '(m))
(cl:defmethod profile-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:profile-val is deprecated.  Use pr2_mechanism_controllers-srv:profile instead.")
  (profile m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:period-val is deprecated.  Use pr2_mechanism_controllers-srv:period instead.")
  (period m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:amplitude-val is deprecated.  Use pr2_mechanism_controllers-srv:amplitude instead.")
  (amplitude m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SetProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:offset-val is deprecated.  Use pr2_mechanism_controllers-srv:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProfile-request>) ostream)
  "Serializes a message object of type '<SetProfile-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'UpperTurnaround))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'LowerTurnaround))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upperDecelBuffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lowerDecelBuffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'profile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProfile-request>) istream)
  "Deserializes a message object of type '<SetProfile-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UpperTurnaround) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LowerTurnaround) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upperDecelBuffer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lowerDecelBuffer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'profile) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProfile-request>)))
  "Returns string type for a service object of type '<SetProfile-request>"
  "pr2_mechanism_controllers/SetProfileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProfile-request)))
  "Returns string type for a service object of type 'SetProfile-request"
  "pr2_mechanism_controllers/SetProfileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProfile-request>)))
  "Returns md5sum for a message object of type '<SetProfile-request>"
  "2c429583cad60964651aba828d788a9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProfile-request)))
  "Returns md5sum for a message object of type 'SetProfile-request"
  "2c429583cad60964651aba828d788a9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProfile-request>)))
  "Returns full string definition for message of type '<SetProfile-request>"
  (cl:format cl:nil "float64 UpperTurnaround~%float64 LowerTurnaround~%float64 upperDecelBuffer~%float64 lowerDecelBuffer~%float64 profile~%float64 period~%float64 amplitude~%float64 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProfile-request)))
  "Returns full string definition for message of type 'SetProfile-request"
  (cl:format cl:nil "float64 UpperTurnaround~%float64 LowerTurnaround~%float64 upperDecelBuffer~%float64 lowerDecelBuffer~%float64 profile~%float64 period~%float64 amplitude~%float64 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProfile-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProfile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProfile-request
    (cl:cons ':UpperTurnaround (UpperTurnaround msg))
    (cl:cons ':LowerTurnaround (LowerTurnaround msg))
    (cl:cons ':upperDecelBuffer (upperDecelBuffer msg))
    (cl:cons ':lowerDecelBuffer (lowerDecelBuffer msg))
    (cl:cons ':profile (profile msg))
    (cl:cons ':period (period msg))
    (cl:cons ':amplitude (amplitude msg))
    (cl:cons ':offset (offset msg))
))
;//! \htmlinclude SetProfile-response.msg.html

(cl:defclass <SetProfile-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetProfile-response (<SetProfile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProfile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProfile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-srv:<SetProfile-response> is deprecated: use pr2_mechanism_controllers-srv:SetProfile-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <SetProfile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-srv:time-val is deprecated.  Use pr2_mechanism_controllers-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProfile-response>) ostream)
  "Serializes a message object of type '<SetProfile-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProfile-response>) istream)
  "Deserializes a message object of type '<SetProfile-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProfile-response>)))
  "Returns string type for a service object of type '<SetProfile-response>"
  "pr2_mechanism_controllers/SetProfileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProfile-response)))
  "Returns string type for a service object of type 'SetProfile-response"
  "pr2_mechanism_controllers/SetProfileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProfile-response>)))
  "Returns md5sum for a message object of type '<SetProfile-response>"
  "2c429583cad60964651aba828d788a9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProfile-response)))
  "Returns md5sum for a message object of type 'SetProfile-response"
  "2c429583cad60964651aba828d788a9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProfile-response>)))
  "Returns full string definition for message of type '<SetProfile-response>"
  (cl:format cl:nil "float64 time~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProfile-response)))
  "Returns full string definition for message of type 'SetProfile-response"
  (cl:format cl:nil "float64 time~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProfile-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProfile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProfile-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetProfile)))
  'SetProfile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetProfile)))
  'SetProfile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProfile)))
  "Returns string type for a service object of type '<SetProfile>"
  "pr2_mechanism_controllers/SetProfile")