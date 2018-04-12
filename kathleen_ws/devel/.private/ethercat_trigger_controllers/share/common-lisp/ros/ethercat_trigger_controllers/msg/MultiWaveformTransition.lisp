; Auto-generated. Do not edit!


(cl:in-package ethercat_trigger_controllers-msg)


;//! \htmlinclude MultiWaveformTransition.msg.html

(cl:defclass <MultiWaveformTransition> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass MultiWaveformTransition (<MultiWaveformTransition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiWaveformTransition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiWaveformTransition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-msg:<MultiWaveformTransition> is deprecated: use ethercat_trigger_controllers-msg:MultiWaveformTransition instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <MultiWaveformTransition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:time-val is deprecated.  Use ethercat_trigger_controllers-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MultiWaveformTransition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:value-val is deprecated.  Use ethercat_trigger_controllers-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MultiWaveformTransition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:topic-val is deprecated.  Use ethercat_trigger_controllers-msg:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiWaveformTransition>) ostream)
  "Serializes a message object of type '<MultiWaveformTransition>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiWaveformTransition>) istream)
  "Deserializes a message object of type '<MultiWaveformTransition>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiWaveformTransition>)))
  "Returns string type for a message object of type '<MultiWaveformTransition>"
  "ethercat_trigger_controllers/MultiWaveformTransition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiWaveformTransition)))
  "Returns string type for a message object of type 'MultiWaveformTransition"
  "ethercat_trigger_controllers/MultiWaveformTransition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiWaveformTransition>)))
  "Returns md5sum for a message object of type '<MultiWaveformTransition>"
  "bdd47e5d1c3d77473af2df9833a0608a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiWaveformTransition)))
  "Returns md5sum for a message object of type 'MultiWaveformTransition"
  "bdd47e5d1c3d77473af2df9833a0608a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiWaveformTransition>)))
  "Returns full string definition for message of type '<MultiWaveformTransition>"
  (cl:format cl:nil "# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiWaveformTransition)))
  "Returns full string definition for message of type 'MultiWaveformTransition"
  (cl:format cl:nil "# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiWaveformTransition>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiWaveformTransition>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiWaveformTransition
    (cl:cons ':time (time msg))
    (cl:cons ':value (value msg))
    (cl:cons ':topic (topic msg))
))
