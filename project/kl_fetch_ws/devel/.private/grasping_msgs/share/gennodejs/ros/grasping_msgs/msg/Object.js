// Auto-generated. Do not edit!

// (in-package grasping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectProperty = require('./ObjectProperty.js');
let sensor_msgs = _finder('sensor_msgs');
let shape_msgs = _finder('shape_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.support_surface = null;
      this.properties = null;
      this.point_cluster = null;
      this.primitives = null;
      this.primitive_poses = null;
      this.meshes = null;
      this.mesh_poses = null;
      this.surface = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('support_surface')) {
        this.support_surface = initObj.support_surface
      }
      else {
        this.support_surface = '';
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
      if (initObj.hasOwnProperty('point_cluster')) {
        this.point_cluster = initObj.point_cluster
      }
      else {
        this.point_cluster = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('primitives')) {
        this.primitives = initObj.primitives
      }
      else {
        this.primitives = [];
      }
      if (initObj.hasOwnProperty('primitive_poses')) {
        this.primitive_poses = initObj.primitive_poses
      }
      else {
        this.primitive_poses = [];
      }
      if (initObj.hasOwnProperty('meshes')) {
        this.meshes = initObj.meshes
      }
      else {
        this.meshes = [];
      }
      if (initObj.hasOwnProperty('mesh_poses')) {
        this.mesh_poses = initObj.mesh_poses
      }
      else {
        this.mesh_poses = [];
      }
      if (initObj.hasOwnProperty('surface')) {
        this.surface = initObj.surface
      }
      else {
        this.surface = new shape_msgs.msg.Plane();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [support_surface]
    bufferOffset = _serializer.string(obj.support_surface, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = ObjectProperty.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [point_cluster]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.point_cluster, buffer, bufferOffset);
    // Serialize message field [primitives]
    // Serialize the length for message field [primitives]
    bufferOffset = _serializer.uint32(obj.primitives.length, buffer, bufferOffset);
    obj.primitives.forEach((val) => {
      bufferOffset = shape_msgs.msg.SolidPrimitive.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [primitive_poses]
    // Serialize the length for message field [primitive_poses]
    bufferOffset = _serializer.uint32(obj.primitive_poses.length, buffer, bufferOffset);
    obj.primitive_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [meshes]
    // Serialize the length for message field [meshes]
    bufferOffset = _serializer.uint32(obj.meshes.length, buffer, bufferOffset);
    obj.meshes.forEach((val) => {
      bufferOffset = shape_msgs.msg.Mesh.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [mesh_poses]
    // Serialize the length for message field [mesh_poses]
    bufferOffset = _serializer.uint32(obj.mesh_poses.length, buffer, bufferOffset);
    obj.mesh_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [surface]
    bufferOffset = shape_msgs.msg.Plane.serialize(obj.surface, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [support_surface]
    data.support_surface = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [properties]
    // Deserialize array length for message field [properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties[i] = ObjectProperty.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [point_cluster]
    data.point_cluster = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [primitives]
    // Deserialize array length for message field [primitives]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.primitives = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.primitives[i] = shape_msgs.msg.SolidPrimitive.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [primitive_poses]
    // Deserialize array length for message field [primitive_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.primitive_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.primitive_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [meshes]
    // Deserialize array length for message field [meshes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.meshes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.meshes[i] = shape_msgs.msg.Mesh.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [mesh_poses]
    // Deserialize array length for message field [mesh_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mesh_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mesh_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [surface]
    data.surface = shape_msgs.msg.Plane.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += object.support_surface.length;
    object.properties.forEach((val) => {
      length += ObjectProperty.getMessageSize(val);
    });
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.point_cluster);
    object.primitives.forEach((val) => {
      length += shape_msgs.msg.SolidPrimitive.getMessageSize(val);
    });
    length += 56 * object.primitive_poses.length;
    object.meshes.forEach((val) => {
      length += shape_msgs.msg.Mesh.getMessageSize(val);
    });
    length += 56 * object.mesh_poses.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grasping_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0770e300363d18954f6fd25963e4d536';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###########################################################
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
    # contents of the "fields" array.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.support_surface !== undefined) {
      resolved.support_surface = msg.support_surface;
    }
    else {
      resolved.support_surface = ''
    }

    if (msg.properties !== undefined) {
      resolved.properties = new Array(msg.properties.length);
      for (let i = 0; i < resolved.properties.length; ++i) {
        resolved.properties[i] = ObjectProperty.Resolve(msg.properties[i]);
      }
    }
    else {
      resolved.properties = []
    }

    if (msg.point_cluster !== undefined) {
      resolved.point_cluster = sensor_msgs.msg.PointCloud2.Resolve(msg.point_cluster)
    }
    else {
      resolved.point_cluster = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.primitives !== undefined) {
      resolved.primitives = new Array(msg.primitives.length);
      for (let i = 0; i < resolved.primitives.length; ++i) {
        resolved.primitives[i] = shape_msgs.msg.SolidPrimitive.Resolve(msg.primitives[i]);
      }
    }
    else {
      resolved.primitives = []
    }

    if (msg.primitive_poses !== undefined) {
      resolved.primitive_poses = new Array(msg.primitive_poses.length);
      for (let i = 0; i < resolved.primitive_poses.length; ++i) {
        resolved.primitive_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.primitive_poses[i]);
      }
    }
    else {
      resolved.primitive_poses = []
    }

    if (msg.meshes !== undefined) {
      resolved.meshes = new Array(msg.meshes.length);
      for (let i = 0; i < resolved.meshes.length; ++i) {
        resolved.meshes[i] = shape_msgs.msg.Mesh.Resolve(msg.meshes[i]);
      }
    }
    else {
      resolved.meshes = []
    }

    if (msg.mesh_poses !== undefined) {
      resolved.mesh_poses = new Array(msg.mesh_poses.length);
      for (let i = 0; i < resolved.mesh_poses.length; ++i) {
        resolved.mesh_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.mesh_poses[i]);
      }
    }
    else {
      resolved.mesh_poses = []
    }

    if (msg.surface !== undefined) {
      resolved.surface = shape_msgs.msg.Plane.Resolve(msg.surface)
    }
    else {
      resolved.surface = new shape_msgs.msg.Plane()
    }

    return resolved;
    }
};

module.exports = Object;
