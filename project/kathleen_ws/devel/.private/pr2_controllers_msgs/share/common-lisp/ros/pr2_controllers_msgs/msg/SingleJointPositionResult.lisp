; Auto-generated. Do not edit!


(cl:in-package pr2_controllers_msgs-msg)


;//! \htmlinclude SingleJointPositionResult.msg.html

(cl:defclass <SingleJointPositionResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SingleJointPositionResult (<SingleJointPositionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleJointPositionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleJointPositionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_controllers_msgs-msg:<SingleJointPositionResult> is deprecated: use pr2_controllers_msgs-msg:SingleJointPositionResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleJointPositionResult>) ostream)
  "Serializes a message object of type '<SingleJointPositionResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleJointPositionResult>) istream)
  "Deserializes a message object of type '<SingleJointPositionResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleJointPositionResult>)))
  "Returns string type for a message object of type '<SingleJointPositionResult>"
  "pr2_controllers_msgs/SingleJointPositionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleJointPositionResult)))
  "Returns string type for a message object of type 'SingleJointPositionResult"
  "pr2_controllers_msgs/SingleJointPositionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleJointPositionResult>)))
  "Returns md5sum for a message object of type '<SingleJointPositionResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleJointPositionResult)))
  "Returns md5sum for a message object of type 'SingleJointPositionResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleJointPositionResult>)))
  "Returns full string definition for message of type '<SingleJointPositionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleJointPositionResult)))
  "Returns full string definition for message of type 'SingleJointPositionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleJointPositionResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleJointPositionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleJointPositionResult
))