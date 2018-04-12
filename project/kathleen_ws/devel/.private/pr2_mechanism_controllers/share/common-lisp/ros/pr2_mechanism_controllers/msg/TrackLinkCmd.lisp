; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-msg)


;//! \htmlinclude TrackLinkCmd.msg.html

(cl:defclass <TrackLinkCmd> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:fixnum
    :initform 0)
   (link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass TrackLinkCmd (<TrackLinkCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackLinkCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackLinkCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-msg:<TrackLinkCmd> is deprecated: use pr2_mechanism_controllers-msg:TrackLinkCmd instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <TrackLinkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:enable-val is deprecated.  Use pr2_mechanism_controllers-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <TrackLinkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:link_name-val is deprecated.  Use pr2_mechanism_controllers-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <TrackLinkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:point-val is deprecated.  Use pr2_mechanism_controllers-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackLinkCmd>) ostream)
  "Serializes a message object of type '<TrackLinkCmd>"
  (cl:let* ((signed (cl:slot-value msg 'enable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackLinkCmd>) istream)
  "Deserializes a message object of type '<TrackLinkCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enable) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackLinkCmd>)))
  "Returns string type for a message object of type '<TrackLinkCmd>"
  "pr2_mechanism_controllers/TrackLinkCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackLinkCmd)))
  "Returns string type for a message object of type 'TrackLinkCmd"
  "pr2_mechanism_controllers/TrackLinkCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackLinkCmd>)))
  "Returns md5sum for a message object of type '<TrackLinkCmd>"
  "08ccfe603e4e21c792896712c3b72de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackLinkCmd)))
  "Returns md5sum for a message object of type 'TrackLinkCmd"
  "08ccfe603e4e21c792896712c3b72de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackLinkCmd>)))
  "Returns full string definition for message of type '<TrackLinkCmd>"
  (cl:format cl:nil "int8 enable~%string link_name~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackLinkCmd)))
  "Returns full string definition for message of type 'TrackLinkCmd"
  (cl:format cl:nil "int8 enable~%string link_name~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackLinkCmd>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackLinkCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackLinkCmd
    (cl:cons ':enable (enable msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':point (point msg))
))
