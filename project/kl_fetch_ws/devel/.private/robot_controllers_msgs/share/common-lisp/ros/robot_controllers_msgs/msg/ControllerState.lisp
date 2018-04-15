; Auto-generated. Do not edit!


(cl:in-package robot_controllers_msgs-msg)


;//! \htmlinclude ControllerState.msg.html

(cl:defclass <ControllerState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControllerState (<ControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_controllers_msgs-msg:<ControllerState> is deprecated: use robot_controllers_msgs-msg:ControllerState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:name-val is deprecated.  Use robot_controllers_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:type-val is deprecated.  Use robot_controllers_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:state-val is deprecated.  Use robot_controllers_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControllerState>)))
    "Constants for message type '<ControllerState>"
  '((:STOPPED . 0)
    (:RUNNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControllerState)))
    "Constants for message type 'ControllerState"
  '((:STOPPED . 0)
    (:RUNNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerState>) ostream)
  "Serializes a message object of type '<ControllerState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerState>) istream)
  "Deserializes a message object of type '<ControllerState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerState>)))
  "Returns string type for a message object of type '<ControllerState>"
  "robot_controllers_msgs/ControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerState)))
  "Returns string type for a message object of type 'ControllerState"
  "robot_controllers_msgs/ControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerState>)))
  "Returns md5sum for a message object of type '<ControllerState>"
  "af57e70ba1ab402f75604e58ad260b8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerState)))
  "Returns md5sum for a message object of type 'ControllerState"
  "af57e70ba1ab402f75604e58ad260b8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerState>)))
  "Returns full string definition for message of type '<ControllerState>"
  (cl:format cl:nil "# Valid states:~%~%uint8 STOPPED = 0~%uint8 RUNNING = 1~%uint8 ERROR = 2~%~%string name~%string type~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerState)))
  "Returns full string definition for message of type 'ControllerState"
  (cl:format cl:nil "# Valid states:~%~%uint8 STOPPED = 0~%uint8 RUNNING = 1~%uint8 ERROR = 2~%~%string name~%string type~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerState
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':state (state msg))
))
