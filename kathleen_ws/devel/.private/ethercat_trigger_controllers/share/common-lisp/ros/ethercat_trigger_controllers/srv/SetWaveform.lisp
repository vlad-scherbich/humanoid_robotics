; Auto-generated. Do not edit!


(cl:in-package ethercat_trigger_controllers-srv)


;//! \htmlinclude SetWaveform-request.msg.html

(cl:defclass <SetWaveform-request> (roslisp-msg-protocol:ros-message)
  ((rep_rate
    :reader rep_rate
    :initarg :rep_rate
    :type cl:float
    :initform 0.0)
   (phase
    :reader phase
    :initarg :phase
    :type cl:float
    :initform 0.0)
   (duty_cycle
    :reader duty_cycle
    :initarg :duty_cycle
    :type cl:float
    :initform 0.0)
   (running
    :reader running
    :initarg :running
    :type cl:integer
    :initform 0)
   (active_low
    :reader active_low
    :initarg :active_low
    :type cl:integer
    :initform 0)
   (pulsed
    :reader pulsed
    :initarg :pulsed
    :type cl:integer
    :initform 0))
)

(cl:defclass SetWaveform-request (<SetWaveform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaveform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaveform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-srv:<SetWaveform-request> is deprecated: use ethercat_trigger_controllers-srv:SetWaveform-request instead.")))

(cl:ensure-generic-function 'rep_rate-val :lambda-list '(m))
(cl:defmethod rep_rate-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:rep_rate-val is deprecated.  Use ethercat_trigger_controllers-srv:rep_rate instead.")
  (rep_rate m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:phase-val is deprecated.  Use ethercat_trigger_controllers-srv:phase instead.")
  (phase m))

(cl:ensure-generic-function 'duty_cycle-val :lambda-list '(m))
(cl:defmethod duty_cycle-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:duty_cycle-val is deprecated.  Use ethercat_trigger_controllers-srv:duty_cycle instead.")
  (duty_cycle m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:running-val is deprecated.  Use ethercat_trigger_controllers-srv:running instead.")
  (running m))

(cl:ensure-generic-function 'active_low-val :lambda-list '(m))
(cl:defmethod active_low-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:active_low-val is deprecated.  Use ethercat_trigger_controllers-srv:active_low instead.")
  (active_low m))

(cl:ensure-generic-function 'pulsed-val :lambda-list '(m))
(cl:defmethod pulsed-val ((m <SetWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:pulsed-val is deprecated.  Use ethercat_trigger_controllers-srv:pulsed instead.")
  (pulsed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaveform-request>) ostream)
  "Serializes a message object of type '<SetWaveform-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rep_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duty_cycle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'running)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'active_low)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pulsed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaveform-request>) istream)
  "Deserializes a message object of type '<SetWaveform-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rep_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phase) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duty_cycle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'running) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_low) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pulsed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaveform-request>)))
  "Returns string type for a service object of type '<SetWaveform-request>"
  "ethercat_trigger_controllers/SetWaveformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaveform-request)))
  "Returns string type for a service object of type 'SetWaveform-request"
  "ethercat_trigger_controllers/SetWaveformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaveform-request>)))
  "Returns md5sum for a message object of type '<SetWaveform-request>"
  "988450e1ddd386f3967c381c19b2330c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaveform-request)))
  "Returns md5sum for a message object of type 'SetWaveform-request"
  "988450e1ddd386f3967c381c19b2330c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaveform-request>)))
  "Returns full string definition for message of type '<SetWaveform-request>"
  (cl:format cl:nil "float64 rep_rate~%float64 phase~%float64 duty_cycle~%int32 running~%int32 active_low~%int32 pulsed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaveform-request)))
  "Returns full string definition for message of type 'SetWaveform-request"
  (cl:format cl:nil "float64 rep_rate~%float64 phase~%float64 duty_cycle~%int32 running~%int32 active_low~%int32 pulsed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaveform-request>))
  (cl:+ 0
     8
     8
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaveform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaveform-request
    (cl:cons ':rep_rate (rep_rate msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':duty_cycle (duty_cycle msg))
    (cl:cons ':running (running msg))
    (cl:cons ':active_low (active_low msg))
    (cl:cons ':pulsed (pulsed msg))
))
;//! \htmlinclude SetWaveform-response.msg.html

(cl:defclass <SetWaveform-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetWaveform-response (<SetWaveform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaveform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaveform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-srv:<SetWaveform-response> is deprecated: use ethercat_trigger_controllers-srv:SetWaveform-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaveform-response>) ostream)
  "Serializes a message object of type '<SetWaveform-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaveform-response>) istream)
  "Deserializes a message object of type '<SetWaveform-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaveform-response>)))
  "Returns string type for a service object of type '<SetWaveform-response>"
  "ethercat_trigger_controllers/SetWaveformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaveform-response)))
  "Returns string type for a service object of type 'SetWaveform-response"
  "ethercat_trigger_controllers/SetWaveformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaveform-response>)))
  "Returns md5sum for a message object of type '<SetWaveform-response>"
  "988450e1ddd386f3967c381c19b2330c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaveform-response)))
  "Returns md5sum for a message object of type 'SetWaveform-response"
  "988450e1ddd386f3967c381c19b2330c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaveform-response>)))
  "Returns full string definition for message of type '<SetWaveform-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaveform-response)))
  "Returns full string definition for message of type 'SetWaveform-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaveform-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaveform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaveform-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWaveform)))
  'SetWaveform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWaveform)))
  'SetWaveform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaveform)))
  "Returns string type for a service object of type '<SetWaveform>"
  "ethercat_trigger_controllers/SetWaveform")