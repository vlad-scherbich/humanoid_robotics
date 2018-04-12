; Auto-generated. Do not edit!


(cl:in-package ethercat_trigger_controllers-msg)


;//! \htmlinclude MultiWaveform.msg.html

(cl:defclass <MultiWaveform> (roslisp-msg-protocol:ros-message)
  ((period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0)
   (zero_offset
    :reader zero_offset
    :initarg :zero_offset
    :type cl:float
    :initform 0.0)
   (transitions
    :reader transitions
    :initarg :transitions
    :type (cl:vector ethercat_trigger_controllers-msg:MultiWaveformTransition)
   :initform (cl:make-array 0 :element-type 'ethercat_trigger_controllers-msg:MultiWaveformTransition :initial-element (cl:make-instance 'ethercat_trigger_controllers-msg:MultiWaveformTransition))))
)

(cl:defclass MultiWaveform (<MultiWaveform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiWaveform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiWaveform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethercat_trigger_controllers-msg:<MultiWaveform> is deprecated: use ethercat_trigger_controllers-msg:MultiWaveform instead.")))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <MultiWaveform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:period-val is deprecated.  Use ethercat_trigger_controllers-msg:period instead.")
  (period m))

(cl:ensure-generic-function 'zero_offset-val :lambda-list '(m))
(cl:defmethod zero_offset-val ((m <MultiWaveform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:zero_offset-val is deprecated.  Use ethercat_trigger_controllers-msg:zero_offset instead.")
  (zero_offset m))

(cl:ensure-generic-function 'transitions-val :lambda-list '(m))
(cl:defmethod transitions-val ((m <MultiWaveform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethercat_trigger_controllers-msg:transitions-val is deprecated.  Use ethercat_trigger_controllers-msg:transitions instead.")
  (transitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiWaveform>) ostream)
  "Serializes a message object of type '<MultiWaveform>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zero_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transitions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transitions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiWaveform>) istream)
  "Deserializes a message object of type '<MultiWaveform>"
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
    (cl:setf (cl:slot-value msg 'zero_offset) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transitions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transitions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ethercat_trigger_controllers-msg:MultiWaveformTransition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiWaveform>)))
  "Returns string type for a message object of type '<MultiWaveform>"
  "ethercat_trigger_controllers/MultiWaveform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiWaveform)))
  "Returns string type for a message object of type 'MultiWaveform"
  "ethercat_trigger_controllers/MultiWaveform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiWaveform>)))
  "Returns md5sum for a message object of type '<MultiWaveform>"
  "6a8e166563c159e73f391a302e7b37f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiWaveform)))
  "Returns md5sum for a message object of type 'MultiWaveform"
  "6a8e166563c159e73f391a302e7b37f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiWaveform>)))
  "Returns full string definition for message of type '<MultiWaveform>"
  (cl:format cl:nil "# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and~%# k are integers.~%~%float64 period # Period of the waveform in seconds.~%float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds~%MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveformTransition~%# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiWaveform)))
  "Returns full string definition for message of type 'MultiWaveform"
  (cl:format cl:nil "# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and~%# k are integers.~%~%float64 period # Period of the waveform in seconds.~%float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds~%MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)~%~%================================================================================~%MSG: ethercat_trigger_controllers/MultiWaveformTransition~%# Used to specify a transition in the SetMultiWaveform service.~%~%float64 time # Transition time after start of period.~%uint32 value # Value of the digital output after the transition time.~%string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiWaveform>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transitions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiWaveform>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiWaveform
    (cl:cons ':period (period msg))
    (cl:cons ':zero_offset (zero_offset msg))
    (cl:cons ':transitions (transitions msg))
))
