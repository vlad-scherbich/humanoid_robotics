; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_controllers-msg)


;//! \htmlinclude OdometryMatrix.msg.html

(cl:defclass <OdometryMatrix> (roslisp-msg-protocol:ros-message)
  ((m
    :reader m
    :initarg :m
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OdometryMatrix (<OdometryMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_controllers-msg:<OdometryMatrix> is deprecated: use pr2_mechanism_controllers-msg:OdometryMatrix instead.")))

(cl:ensure-generic-function 'm-val :lambda-list '(m))
(cl:defmethod m-val ((m <OdometryMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_controllers-msg:m-val is deprecated.  Use pr2_mechanism_controllers-msg:m instead.")
  (m m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryMatrix>) ostream)
  "Serializes a message object of type '<OdometryMatrix>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'm))))
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
   (cl:slot-value msg 'm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryMatrix>) istream)
  "Deserializes a message object of type '<OdometryMatrix>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'm) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'm)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryMatrix>)))
  "Returns string type for a message object of type '<OdometryMatrix>"
  "pr2_mechanism_controllers/OdometryMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryMatrix)))
  "Returns string type for a message object of type 'OdometryMatrix"
  "pr2_mechanism_controllers/OdometryMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryMatrix>)))
  "Returns md5sum for a message object of type '<OdometryMatrix>"
  "1f7818e7ce16454badf1bee936b0ff16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryMatrix)))
  "Returns md5sum for a message object of type 'OdometryMatrix"
  "1f7818e7ce16454badf1bee936b0ff16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryMatrix>)))
  "Returns full string definition for message of type '<OdometryMatrix>"
  (cl:format cl:nil "float64[] m~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryMatrix)))
  "Returns full string definition for message of type 'OdometryMatrix"
  (cl:format cl:nil "float64[] m~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryMatrix>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryMatrix
    (cl:cons ':m (m msg))
))
