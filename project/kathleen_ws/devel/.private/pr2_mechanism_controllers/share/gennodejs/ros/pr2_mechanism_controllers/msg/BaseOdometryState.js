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

class BaseOdometryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.wheel_link_names = null;
      this.drive_constraint_errors = null;
      this.longitudinal_slip_constraint_errors = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('wheel_link_names')) {
        this.wheel_link_names = initObj.wheel_link_names
      }
      else {
        this.wheel_link_names = [];
      }
      if (initObj.hasOwnProperty('drive_constraint_errors')) {
        this.drive_constraint_errors = initObj.drive_constraint_errors
      }
      else {
        this.drive_constraint_errors = [];
      }
      if (initObj.hasOwnProperty('longitudinal_slip_constraint_errors')) {
        this.longitudinal_slip_constraint_errors = initObj.longitudinal_slip_constraint_errors
      }
      else {
        this.longitudinal_slip_constraint_errors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseOdometryState
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [wheel_link_names]
    bufferOffset = _arraySerializer.string(obj.wheel_link_names, buffer, bufferOffset, null);
    // Serialize message field [drive_constraint_errors]
    bufferOffset = _arraySerializer.float64(obj.drive_constraint_errors, buffer, bufferOffset, null);
    // Serialize message field [longitudinal_slip_constraint_errors]
    bufferOffset = _arraySerializer.float64(obj.longitudinal_slip_constraint_errors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseOdometryState
    let len;
    let data = new BaseOdometryState(null);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_link_names]
    data.wheel_link_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [drive_constraint_errors]
    data.drive_constraint_errors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [longitudinal_slip_constraint_errors]
    data.longitudinal_slip_constraint_errors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.wheel_link_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.drive_constraint_errors.length;
    length += 8 * object.longitudinal_slip_constraint_errors.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr2_mechanism_controllers/BaseOdometryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a483e137ebc37abafa4c26549091dd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist velocity
    string[] wheel_link_names
    float64[] drive_constraint_errors
    float64[] longitudinal_slip_constraint_errors
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
    const resolved = new BaseOdometryState(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.wheel_link_names !== undefined) {
      resolved.wheel_link_names = msg.wheel_link_names;
    }
    else {
      resolved.wheel_link_names = []
    }

    if (msg.drive_constraint_errors !== undefined) {
      resolved.drive_constraint_errors = msg.drive_constraint_errors;
    }
    else {
      resolved.drive_constraint_errors = []
    }

    if (msg.longitudinal_slip_constraint_errors !== undefined) {
      resolved.longitudinal_slip_constraint_errors = msg.longitudinal_slip_constraint_errors;
    }
    else {
      resolved.longitudinal_slip_constraint_errors = []
    }

    return resolved;
    }
};

module.exports = BaseOdometryState;
