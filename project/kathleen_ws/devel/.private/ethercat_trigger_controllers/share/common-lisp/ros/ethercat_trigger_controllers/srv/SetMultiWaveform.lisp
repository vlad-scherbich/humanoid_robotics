; Auto-generated. Do not edit!


(cl:in-package ethercat_trigger_controllers-srv)


;//! \htmlinclude SetMultiWaveform-request.msg.html

(cl:defclass <SetMultiWaveform-request> (roslisp-msg-protocol:ros-message)
  ((waveform
    :reader waveform
    :initarg :waveform
    :type ethercat_trigger_controllers-msg:MultiWaveform
    :initform (cl:make-instance 'ethercat_trigger_controllers-msg:MultiWaveform)))
)

(cl:defclass SetMultiWaveform-request (<SetMultiWaveform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMultiWaveform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMultiWaveform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-srv:<SetMultiWaveform-request> is deprecated: use ethercat_trigger_controllers-srv:SetMultiWaveform-request instead.")))

(cl:ensure-generic-function 'waveform-val :lambda-list '(m))
(cl:defmethod waveform-val ((m <SetMultiWaveform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:waveform-val is deprecated.  Use ethercat_trigger_controllers-srv:waveform instead.")
  (waveform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMultiWaveform-request>) ostream)
  "Serializes a message object of type '<SetMultiWaveform-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waveform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMultiWaveform-request>) istream)
  "Deserializes a message object of type '<SetMultiWaveform-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waveform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMultiWaveform-request>)))
  "Returns string type for a service object of type '<SetMultiWaveform-request>"
  "ethercat_trigger_controllers/SetMultiWaveformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMultiWaveform-request)))
  "Returns string type for a service object of type 'SetMultiWaveform-request"
  "ethercat_trigger_controllers/SetMultiWaveformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMultiWaveform-request>)))
  "Returns md5sum for a message object of type '<SetMultiWaveform-request>"
  "cbb7e900a71a9a437da9999c8d39fff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMultiWaveform-request)))
  "Returns md5sum for a message object of type 'SetMultiWaveform-request"
  "cbb7e900a71a9a437da9999c8d39fff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMultiWaveform-request>)))
  "Returns full string definition for message of type '<SetMultiWaveform-request>"
  (cl:format cl:nil "MultiWaveform waveform~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveform~%# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and~%# k are integers.~%~%float64 period # Period of the waveform in seconds.~%float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds~%MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveformTransition~%# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMultiWaveform-request)))
  "Returns full string definition for message of type 'SetMultiWaveform-request"
  (cl:format cl:nil "MultiWaveform waveform~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveform~%# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and~%# k are integers.~%~%float64 period # Period of the waveform in seconds.~%float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds~%MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveformTransition~%# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMultiWaveform-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waveform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMultiWaveform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMultiWaveform-request
    (cl:cons ':waveform (waveform msg))
))
;//! \htmlinclude SetMultiWaveform-response.msg.html

(cl:defclass <SetMultiWaveform-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass SetMultiWaveform-response (<SetMultiWaveform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMultiWaveform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMultiWaveform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-srv:<SetMultiWaveform-response> is deprecated: use ethercat_trigger_controllers-srv:SetMultiWaveform-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMultiWaveform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:success-val is deprecated.  Use ethercat_trigger_controllers-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetMultiWaveform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-srv:status_message-val is deprecated.  Use ethercat_trigger_controllers-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMultiWaveform-response>) ostream)
  "Serializes a message object of type '<SetMultiWaveform-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMultiWaveform-response>) istream)
  "Deserializes a message object of type '<SetMultiWaveform-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMultiWaveform-response>)))
  "Returns string type for a service object of type '<SetMultiWaveform-response>"
  "ethercat_trigger_controllers/SetMultiWaveformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMultiWaveform-response)))
  "Returns string type for a service object of type 'SetMultiWaveform-response"
  "ethercat_trigger_controllers/SetMultiWaveformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMultiWaveform-response>)))
  "Returns md5sum for a message object of type '<SetMultiWaveform-response>"
  "cbb7e900a71a9a437da9999c8d39fff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMultiWaveform-response)))
  "Returns md5sum for a message object of type 'SetMultiWaveform-response"
  "cbb7e900a71a9a437da9999c8d39fff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMultiWaveform-response>)))
  "Returns full string definition for message of type '<SetMultiWaveform-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMultiWaveform-response)))
  "Returns full string definition for message of type 'SetMultiWaveform-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMultiWaveform-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMultiWaveform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMultiWaveform-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMultiWaveform)))
  'SetMultiWaveform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMultiWaveform)))
  'SetMultiWaveform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMultiWaveform)))
  "Returns string type for a service object of type '<SetMultiWaveform>"
  "ethercat_trigger_controllers/SetMultiWaveform")