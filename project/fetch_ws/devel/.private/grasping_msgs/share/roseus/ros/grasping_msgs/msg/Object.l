;; Auto-generated. Do not edit!


(when (boundp 'grasping_msgs::Object)
  (if (not (find-package "GRASPING_MSGS"))
    (make-package "GRASPING_MSGS"))
  (shadow 'Object (find-package "GRASPING_MSGS")))
(unless (find-package "GRASPING_MSGS::OBJECT")
  (make-package "GRASPING_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass grasping_msgs::Object
  :super ros::object
  :slots (_header _name _support_surface _properties _point_cluster _primitives _primitive_poses _meshes _mesh_poses _surface ))

(defmethod grasping_msgs::Object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:support_surface __support_surface) "")
    ((:properties __properties) (let (r) (dotimes (i 0) (push (instance grasping_msgs::ObjectProperty :init) r)) r))
    ((:point_cluster __point_cluster) (instance sensor_msgs::PointCloud2 :init))
    ((:primitives __primitives) (let (r) (dotimes (i 0) (push (instance shape_msgs::SolidPrimitive :init) r)) r))
    ((:primitive_poses __primitive_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:meshes __meshes) (let (r) (dotimes (i 0) (push (instance shape_msgs::Mesh :init) r)) r))
    ((:mesh_poses __mesh_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:surface __surface) (instance shape_msgs::Plane :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _support_surface (string __support_surface))
   (setq _properties __properties)
   (setq _point_cluster __point_cluster)
   (setq _primitives __primitives)
   (setq _primitive_poses __primitive_poses)
   (setq _meshes __meshes)
   (setq _mesh_poses __mesh_poses)
   (setq _surface __surface)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:support_surface
   (&optional __support_surface)
   (if __support_surface (setq _support_surface __support_surface)) _support_surface)
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:point_cluster
   (&rest __point_cluster)
   (if (keywordp (car __point_cluster))
       (send* _point_cluster __point_cluster)
     (progn
       (if __point_cluster (setq _point_cluster (car __point_cluster)))
       _point_cluster)))
  (:primitives
   (&rest __primitives)
   (if (keywordp (car __primitives))
       (send* _primitives __primitives)
     (progn
       (if __primitives (setq _primitives (car __primitives)))
       _primitives)))
  (:primitive_poses
   (&rest __primitive_poses)
   (if (keywordp (car __primitive_poses))
       (send* _primitive_poses __primitive_poses)
     (progn
       (if __primitive_poses (setq _primitive_poses (car __primitive_poses)))
       _primitive_poses)))
  (:meshes
   (&rest __meshes)
   (if (keywordp (car __meshes))
       (send* _meshes __meshes)
     (progn
       (if __meshes (setq _meshes (car __meshes)))
       _meshes)))
  (:mesh_poses
   (&rest __mesh_poses)
   (if (keywordp (car __mesh_poses))
       (send* _mesh_poses __mesh_poses)
     (progn
       (if __mesh_poses (setq _mesh_poses (car __mesh_poses)))
       _mesh_poses)))
  (:surface
   (&rest __surface)
   (if (keywordp (car __surface))
       (send* _surface __surface)
     (progn
       (if __surface (setq _surface (car __surface)))
       _surface)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _support_surface
    4 (length _support_surface)
    ;; grasping_msgs/ObjectProperty[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ;; sensor_msgs/PointCloud2 _point_cluster
    (send _point_cluster :serialization-length)
    ;; shape_msgs/SolidPrimitive[] _primitives
    (apply #'+ (send-all _primitives :serialization-length)) 4
    ;; geometry_msgs/Pose[] _primitive_poses
    (apply #'+ (send-all _primitive_poses :serialization-length)) 4
    ;; shape_msgs/Mesh[] _meshes
    (apply #'+ (send-all _meshes :serialization-length)) 4
    ;; geometry_msgs/Pose[] _mesh_poses
    (apply #'+ (send-all _mesh_poses :serialization-length)) 4
    ;; shape_msgs/Plane _surface
    (send _surface :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _support_surface
       (write-long (length _support_surface) s) (princ _support_surface s)
     ;; grasping_msgs/ObjectProperty[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2 _point_cluster
       (send _point_cluster :serialize s)
     ;; shape_msgs/SolidPrimitive[] _primitives
     (write-long (length _primitives) s)
     (dolist (elem _primitives)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _primitive_poses
     (write-long (length _primitive_poses) s)
     (dolist (elem _primitive_poses)
       (send elem :serialize s)
       )
     ;; shape_msgs/Mesh[] _meshes
     (write-long (length _meshes) s)
     (dolist (elem _meshes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _mesh_poses
     (write-long (length _mesh_poses) s)
     (dolist (elem _mesh_poses)
       (send elem :serialize s)
       )
     ;; shape_msgs/Plane _surface
       (send _surface :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _support_surface
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _support_surface (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; grasping_msgs/ObjectProperty[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance grasping_msgs::ObjectProperty :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2 _point_cluster
     (send _point_cluster :deserialize buf ptr-) (incf ptr- (send _point_cluster :serialization-length))
   ;; shape_msgs/SolidPrimitive[] _primitives
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _primitives (let (r) (dotimes (i n) (push (instance shape_msgs::SolidPrimitive :init) r)) r))
     (dolist (elem- _primitives)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _primitive_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _primitive_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _primitive_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; shape_msgs/Mesh[] _meshes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _meshes (let (r) (dotimes (i n) (push (instance shape_msgs::Mesh :init) r)) r))
     (dolist (elem- _meshes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _mesh_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mesh_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _mesh_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; shape_msgs/Plane _surface
     (send _surface :deserialize buf ptr-) (incf ptr- (send _surface :serialization-length))
   ;;
   self)
  )

(setf (get grasping_msgs::Object :md5sum-) "0770e300363d18954f6fd25963e4d536")
(setf (get grasping_msgs::Object :datatype-) "grasping_msgs/Object")
(setf (get grasping_msgs::Object :definition-)
      "###########################################################
# This message describes an object.

# Many of the geometric items below lack a stamp/frame_id,
# header stamp/frame_id should be used there
std_msgs/Header header

# An object might have a name
string name

# An object might have a known (named) support surface
string support_surface

# Objects might have properties, such as type/class, or color, etc.
ObjectProperty[] properties

###########################################################
# Objects have many possible descriptions
#  The following are the possible description formats

# Perception modules often represent an object as a cluster of points
#  Is considered valid if number of points > 0
sensor_msgs/PointCloud2 point_cluster

# MoveIt prefers solid primitives or meshes as a description of objects
shape_msgs/SolidPrimitive[] primitives
geometry_msgs/Pose[] primitive_poses

shape_msgs/Mesh[] meshes
geometry_msgs/Pose[] mesh_poses

# An object representing a support surface might be described by a plane
# Is considered valid if coefficients are not all 0s.
shape_msgs/Plane surface

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
MSG: grasping_msgs/ObjectProperty
###########################################################
# Other generic properties of an object
string name
string value

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

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
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: shape_msgs/Plane
# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

")



(provide :grasping_msgs/Object "0770e300363d18954f6fd25963e4d536")


