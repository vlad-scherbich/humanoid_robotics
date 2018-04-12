;; Auto-generated. Do not edit!


(when (boundp 'robot_mechanism_controllers::JTCartesianControllerState)
  (if (not (find-package "ROBOT_MECHANISM_CONTROLLERS"))
    (make-package "ROBOT_MECHANISM_CONTROLLERS"))
  (shadow 'JTCartesianControllerState (find-package "ROBOT_MECHANISM_CONTROLLERS")))
(unless (find-package "ROBOT_MECHANISM_CONTROLLERS::JTCARTESIANCONTROLLERSTATE")
  (make-package "ROBOT_MECHANISM_CONTROLLERS::JTCARTESIANCONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude JTCartesianControllerState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_mechanism_controllers::JTCartesianControllerState
  :super ros::object
  :slots (_header _x _x_desi _x_desi_filtered _x_err _xd _xd_desi _F _tau_pose _tau_posture _tau _J _N ))

(defmethod robot_mechanism_controllers::JTCartesianControllerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) (instance geometry_msgs::PoseStamped :init))
    ((:x_desi __x_desi) (instance geometry_msgs::PoseStamped :init))
    ((:x_desi_filtered __x_desi_filtered) (instance geometry_msgs::PoseStamped :init))
    ((:x_err __x_err) (instance geometry_msgs::Twist :init))
    ((:xd __xd) (instance geometry_msgs::Twist :init))
    ((:xd_desi __xd_desi) (instance geometry_msgs::Twist :init))
    ((:F __F) (instance geometry_msgs::Wrench :init))
    ((:tau_pose __tau_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tau_posture __tau_posture) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tau __tau) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:J __J) (instance std_msgs::Float64MultiArray :init))
    ((:N __N) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x __x)
   (setq _x_desi __x_desi)
   (setq _x_desi_filtered __x_desi_filtered)
   (setq _x_err __x_err)
   (setq _xd __xd)
   (setq _xd_desi __xd_desi)
   (setq _F __F)
   (setq _tau_pose __tau_pose)
   (setq _tau_posture __tau_posture)
   (setq _tau __tau)
   (setq _J __J)
   (setq _N __N)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:x_desi
   (&rest __x_desi)
   (if (keywordp (car __x_desi))
       (send* _x_desi __x_desi)
     (progn
       (if __x_desi (setq _x_desi (car __x_desi)))
       _x_desi)))
  (:x_desi_filtered
   (&rest __x_desi_filtered)
   (if (keywordp (car __x_desi_filtered))
       (send* _x_desi_filtered __x_desi_filtered)
     (progn
       (if __x_desi_filtered (setq _x_desi_filtered (car __x_desi_filtered)))
       _x_desi_filtered)))
  (:x_err
   (&rest __x_err)
   (if (keywordp (car __x_err))
       (send* _x_err __x_err)
     (progn
       (if __x_err (setq _x_err (car __x_err)))
       _x_err)))
  (:xd
   (&rest __xd)
   (if (keywordp (car __xd))
       (send* _xd __xd)
     (progn
       (if __xd (setq _xd (car __xd)))
       _xd)))
  (:xd_desi
   (&rest __xd_desi)
   (if (keywordp (car __xd_desi))
       (send* _xd_desi __xd_desi)
     (progn
       (if __xd_desi (setq _xd_desi (car __xd_desi)))
       _xd_desi)))
  (:F
   (&rest __F)
   (if (keywordp (car __F))
       (send* _F __F)
     (progn
       (if __F (setq _F (car __F)))
       _F)))
  (:tau_pose
   (&optional __tau_pose)
   (if __tau_pose (setq _tau_pose __tau_pose)) _tau_pose)
  (:tau_posture
   (&optional __tau_posture)
   (if __tau_posture (setq _tau_posture __tau_posture)) _tau_posture)
  (:tau
   (&optional __tau)
   (if __tau (setq _tau __tau)) _tau)
  (:J
   (&rest __J)
   (if (keywordp (car __J))
       (send* _J __J)
     (progn
       (if __J (setq _J (car __J)))
       _J)))
  (:N
   (&rest __N)
   (if (keywordp (car __N))
       (send* _N __N)
     (progn
       (if __N (setq _N (car __N)))
       _N)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseStamped _x
    (send _x :serialization-length)
    ;; geometry_msgs/PoseStamped _x_desi
    (send _x_desi :serialization-length)
    ;; geometry_msgs/PoseStamped _x_desi_filtered
    (send _x_desi_filtered :serialization-length)
    ;; geometry_msgs/Twist _x_err
    (send _x_err :serialization-length)
    ;; geometry_msgs/Twist _xd
    (send _xd :serialization-length)
    ;; geometry_msgs/Twist _xd_desi
    (send _xd_desi :serialization-length)
    ;; geometry_msgs/Wrench _F
    (send _F :serialization-length)
    ;; float64[] _tau_pose
    (* 8    (length _tau_pose)) 4
    ;; float64[] _tau_posture
    (* 8    (length _tau_posture)) 4
    ;; float64[] _tau
    (* 8    (length _tau)) 4
    ;; std_msgs/Float64MultiArray _J
    (send _J :serialization-length)
    ;; std_msgs/Float64MultiArray _N
    (send _N :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseStamped _x
       (send _x :serialize s)
     ;; geometry_msgs/PoseStamped _x_desi
       (send _x_desi :serialize s)
     ;; geometry_msgs/PoseStamped _x_desi_filtered
       (send _x_desi_filtered :serialize s)
     ;; geometry_msgs/Twist _x_err
       (send _x_err :serialize s)
     ;; geometry_msgs/Twist _xd
       (send _xd :serialize s)
     ;; geometry_msgs/Twist _xd_desi
       (send _xd_desi :serialize s)
     ;; geometry_msgs/Wrench _F
       (send _F :serialize s)
     ;; float64[] _tau_pose
     (write-long (length _tau_pose) s)
     (dotimes (i (length _tau_pose))
       (sys::poke (elt _tau_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tau_posture
     (write-long (length _tau_posture) s)
     (dotimes (i (length _tau_posture))
       (sys::poke (elt _tau_posture i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tau
     (write-long (length _tau) s)
     (dotimes (i (length _tau))
       (sys::poke (elt _tau i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; std_msgs/Float64MultiArray _J
       (send _J :serialize s)
     ;; std_msgs/Float64MultiArray _N
       (send _N :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseStamped _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; geometry_msgs/PoseStamped _x_desi
     (send _x_desi :deserialize buf ptr-) (incf ptr- (send _x_desi :serialization-length))
   ;; geometry_msgs/PoseStamped _x_desi_filtered
     (send _x_desi_filtered :deserialize buf ptr-) (incf ptr- (send _x_desi_filtered :serialization-length))
   ;; geometry_msgs/Twist _x_err
     (send _x_err :deserialize buf ptr-) (incf ptr- (send _x_err :serialization-length))
   ;; geometry_msgs/Twist _xd
     (send _xd :deserialize buf ptr-) (incf ptr- (send _xd :serialization-length))
   ;; geometry_msgs/Twist _xd_desi
     (send _xd_desi :deserialize buf ptr-) (incf ptr- (send _xd_desi :serialization-length))
   ;; geometry_msgs/Wrench _F
     (send _F :deserialize buf ptr-) (incf ptr- (send _F :serialization-length))
   ;; float64[] _tau_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tau_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tau_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tau_posture
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tau_posture (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tau_posture i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tau
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tau (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tau i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; std_msgs/Float64MultiArray _J
     (send _J :deserialize buf ptr-) (incf ptr- (send _J :serialization-length))
   ;; std_msgs/Float64MultiArray _N
     (send _N :deserialize buf ptr-) (incf ptr- (send _N :serialization-length))
   ;;
   self)
  )

(setf (get robot_mechanism_controllers::JTCartesianControllerState :md5sum-) "6ecdaa599ea0d27643819ae4cd4c43d0")
(setf (get robot_mechanism_controllers::JTCartesianControllerState :datatype-) "robot_mechanism_controllers/JTCartesianControllerState")
(setf (get robot_mechanism_controllers::JTCartesianControllerState :definition-)
      "Header header
geometry_msgs/PoseStamped x
geometry_msgs/PoseStamped x_desi
geometry_msgs/PoseStamped x_desi_filtered
geometry_msgs/Twist x_err
geometry_msgs/Twist xd
geometry_msgs/Twist xd_desi
geometry_msgs/Wrench F
float64[] tau_pose
float64[] tau_posture
float64[] tau
std_msgs/Float64MultiArray J
std_msgs/Float64MultiArray N

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :robot_mechanism_controllers/JTCartesianControllerState "6ecdaa599ea0d27643819ae4cd4c43d0")


