// Auto-generated. Do not edit!

// (in-package robot_mechanism_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JTCartesianControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x = null;
      this.x_desi = null;
      this.x_desi_filtered = null;
      this.x_err = null;
      this.xd = null;
      this.xd_desi = null;
      this.F = null;
      this.tau_pose = null;
      this.tau_posture = null;
      this.tau = null;
      this.J = null;
      this.N = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('x_desi')) {
        this.x_desi = initObj.x_desi
      }
      else {
        this.x_desi = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('x_desi_filtered')) {
        this.x_desi_filtered = initObj.x_desi_filtered
      }
      else {
        this.x_desi_filtered = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('x_err')) {
        this.x_err = initObj.x_err
      }
      else {
        this.x_err = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('xd')) {
        this.xd = initObj.xd
      }
      else {
        this.xd = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('xd_desi')) {
        this.xd_desi = initObj.xd_desi
      }
      else {
        this.xd_desi = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('F')) {
        this.F = initObj.F
      }
      else {
        this.F = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('tau_pose')) {
        this.tau_pose = initObj.tau_pose
      }
      else {
        this.tau_pose = [];
      }
      if (initObj.hasOwnProperty('tau_posture')) {
        this.tau_posture = initObj.tau_posture
      }
      else {
        this.tau_posture = [];
      }
      if (initObj.hasOwnProperty('tau')) {
        this.tau = initObj.tau
      }
      else {
        this.tau = [];
      }
      if (initObj.hasOwnProperty('J')) {
        this.J = initObj.J
      }
      else {
        this.J = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('N')) {
        this.N = initObj.N
      }
      else {
        this.N = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JTCartesianControllerState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [x_desi]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.x_desi, buffer, bufferOffset);
    // Serialize message field [x_desi_filtered]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.x_desi_filtered, buffer, bufferOffset);
    // Serialize message field [x_err]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.x_err, buffer, bufferOffset);
    // Serialize message field [xd]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.xd, buffer, bufferOffset);
    // Serialize message field [xd_desi]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.xd_desi, buffer, bufferOffset);
    // Serialize message field [F]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.F, buffer, bufferOffset);
    // Serialize message field [tau_pose]
    bufferOffset = _arraySerializer.float64(obj.tau_pose, buffer, bufferOffset, null);
    // Serialize message field [tau_posture]
    bufferOffset = _arraySerializer.float64(obj.tau_posture, buffer, bufferOffset, null);
    // Serialize message field [tau]
    bufferOffset = _arraySerializer.float64(obj.tau, buffer, bufferOffset, null);
    // Serialize message field [J]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.J, buffer, bufferOffset);
    // Serialize message field [N]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.N, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JTCartesianControllerState
    let len;
    let data = new JTCartesianControllerState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_desi]
    data.x_desi = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_desi_filtered]
    data.x_desi_filtered = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_err]
    data.x_err = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [xd]
    data.xd = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [xd_desi]
    data.xd_desi = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [F]
    data.F = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [tau_pose]
    data.tau_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tau_posture]
    data.tau_posture = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tau]
    data.tau = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [J]
    data.J = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [N]
    data.N = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.x);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.x_desi);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.x_desi_filtered);
    length += 8 * object.tau_pose.length;
    length += 8 * object.tau_posture.length;
    length += 8 * object.tau.length;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.J);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.N);
    return length + 204;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_mechanism_controllers/JTCartesianControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ecdaa599ea0d27643819ae4cd4c43d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JTCartesianControllerState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x !== undefined) {
      resolved.x = geometry_msgs.msg.PoseStamped.Resolve(msg.x)
    }
    else {
      resolved.x = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.x_desi !== undefined) {
      resolved.x_desi = geometry_msgs.msg.PoseStamped.Resolve(msg.x_desi)
    }
    else {
      resolved.x_desi = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.x_desi_filtered !== undefined) {
      resolved.x_desi_filtered = geometry_msgs.msg.PoseStamped.Resolve(msg.x_desi_filtered)
    }
    else {
      resolved.x_desi_filtered = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.x_err !== undefined) {
      resolved.x_err = geometry_msgs.msg.Twist.Resolve(msg.x_err)
    }
    else {
      resolved.x_err = new geometry_msgs.msg.Twist()
    }

    if (msg.xd !== undefined) {
      resolved.xd = geometry_msgs.msg.Twist.Resolve(msg.xd)
    }
    else {
      resolved.xd = new geometry_msgs.msg.Twist()
    }

    if (msg.xd_desi !== undefined) {
      resolved.xd_desi = geometry_msgs.msg.Twist.Resolve(msg.xd_desi)
    }
    else {
      resolved.xd_desi = new geometry_msgs.msg.Twist()
    }

    if (msg.F !== undefined) {
      resolved.F = geometry_msgs.msg.Wrench.Resolve(msg.F)
    }
    else {
      resolved.F = new geometry_msgs.msg.Wrench()
    }

    if (msg.tau_pose !== undefined) {
      resolved.tau_pose = msg.tau_pose;
    }
    else {
      resolved.tau_pose = []
    }

    if (msg.tau_posture !== undefined) {
      resolved.tau_posture = msg.tau_posture;
    }
    else {
      resolved.tau_posture = []
    }

    if (msg.tau !== undefined) {
      resolved.tau = msg.tau;
    }
    else {
      resolved.tau = []
    }

    if (msg.J !== undefined) {
      resolved.J = std_msgs.msg.Float64MultiArray.Resolve(msg.J)
    }
    else {
      resolved.J = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.N !== undefined) {
      resolved.N = std_msgs.msg.Float64MultiArray.Resolve(msg.N)
    }
    else {
      resolved.N = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = JTCartesianControllerState;
