// Auto-generated. Do not edit!

// (in-package pr2_mechanism_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BaseControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.joint_velocity_measured = null;
      this.joint_velocity_commanded = null;
      this.joint_velocity_error = null;
      this.joint_effort_measured = null;
      this.joint_effort_commanded = null;
      this.joint_effort_error = null;
      this.joint_names = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('joint_velocity_measured')) {
        this.joint_velocity_measured = initObj.joint_velocity_measured
      }
      else {
        this.joint_velocity_measured = [];
      }
      if (initObj.hasOwnProperty('joint_velocity_commanded')) {
        this.joint_velocity_commanded = initObj.joint_velocity_commanded
      }
      else {
        this.joint_velocity_commanded = [];
      }
      if (initObj.hasOwnProperty('joint_velocity_error')) {
        this.joint_velocity_error = initObj.joint_velocity_error
      }
      else {
        this.joint_velocity_error = [];
      }
      if (initObj.hasOwnProperty('joint_effort_measured')) {
        this.joint_effort_measured = initObj.joint_effort_measured
      }
      else {
        this.joint_effort_measured = [];
      }
      if (initObj.hasOwnProperty('joint_effort_commanded')) {
        this.joint_effort_commanded = initObj.joint_effort_commanded
      }
      else {
        this.joint_effort_commanded = [];
      }
      if (initObj.hasOwnProperty('joint_effort_error')) {
        this.joint_effort_error = initObj.joint_effort_error
      }
      else {
        this.joint_effort_error = [];
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseControllerState
    // Serialize message field [command]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [joint_velocity_measured]
    bufferOffset = _arraySerializer.float64(obj.joint_velocity_measured, buffer, bufferOffset, null);
    // Serialize message field [joint_velocity_commanded]
    bufferOffset = _arraySerializer.float64(obj.joint_velocity_commanded, buffer, bufferOffset, null);
    // Serialize message field [joint_velocity_error]
    bufferOffset = _arraySerializer.float64(obj.joint_velocity_error, buffer, bufferOffset, null);
    // Serialize message field [joint_effort_measured]
    bufferOffset = _arraySerializer.float64(obj.joint_effort_measured, buffer, bufferOffset, null);
    // Serialize message field [joint_effort_commanded]
    bufferOffset = _arraySerializer.float64(obj.joint_effort_commanded, buffer, bufferOffset, null);
    // Serialize message field [joint_effort_error]
    bufferOffset = _arraySerializer.float64(obj.joint_effort_error, buffer, bufferOffset, null);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseControllerState
    let len;
    let data = new BaseControllerState(null);
    // Deserialize message field [command]
    data.command = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_velocity_measured]
    data.joint_velocity_measured = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_velocity_commanded]
    data.joint_velocity_commanded = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_velocity_error]
    data.joint_velocity_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_effort_measured]
    data.joint_effort_measured = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_effort_commanded]
    data.joint_effort_commanded = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_effort_error]
    data.joint_effort_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_velocity_measured.length;
    length += 8 * object.joint_velocity_commanded.length;
    length += 8 * object.joint_velocity_error.length;
    length += 8 * object.joint_effort_measured.length;
    length += 8 * object.joint_effort_commanded.length;
    length += 8 * object.joint_effort_error.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr2_mechanism_controllers/BaseControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a488aa492f9175d5fa35e22e56c4b28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist command
    float64[] joint_velocity_measured
    float64[] joint_velocity_commanded
    float64[] joint_velocity_error
    float64[] joint_effort_measured
    float64[] joint_effort_commanded
    float64[] joint_effort_error
    string[] joint_names
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaseControllerState(null);
    if (msg.command !== undefined) {
      resolved.command = geometry_msgs.msg.Twist.Resolve(msg.command)
    }
    else {
      resolved.command = new geometry_msgs.msg.Twist()
    }

    if (msg.joint_velocity_measured !== undefined) {
      resolved.joint_velocity_measured = msg.joint_velocity_measured;
    }
    else {
      resolved.joint_velocity_measured = []
    }

    if (msg.joint_velocity_commanded !== undefined) {
      resolved.joint_velocity_commanded = msg.joint_velocity_commanded;
    }
    else {
      resolved.joint_velocity_commanded = []
    }

    if (msg.joint_velocity_error !== undefined) {
      resolved.joint_velocity_error = msg.joint_velocity_error;
    }
    else {
      resolved.joint_velocity_error = []
    }

    if (msg.joint_effort_measured !== undefined) {
      resolved.joint_effort_measured = msg.joint_effort_measured;
    }
    else {
      resolved.joint_effort_measured = []
    }

    if (msg.joint_effort_commanded !== undefined) {
      resolved.joint_effort_commanded = msg.joint_effort_commanded;
    }
    else {
      resolved.joint_effort_commanded = []
    }

    if (msg.joint_effort_error !== undefined) {
      resolved.joint_effort_error = msg.joint_effort_error;
    }
    else {
      resolved.joint_effort_error = []
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    return resolved;
    }
};

module.exports = BaseControllerState;
