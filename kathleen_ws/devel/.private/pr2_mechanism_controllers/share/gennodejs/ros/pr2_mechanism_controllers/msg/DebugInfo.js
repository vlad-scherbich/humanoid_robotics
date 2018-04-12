// Auto-generated. Do not edit!

// (in-package pr2_mechanism_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DebugInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timing = null;
      this.sequence = null;
      this.input_valid = null;
      this.residual = null;
    }
    else {
      if (initObj.hasOwnProperty('timing')) {
        this.timing = initObj.timing
      }
      else {
        this.timing = [];
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('input_valid')) {
        this.input_valid = initObj.input_valid
      }
      else {
        this.input_valid = false;
      }
      if (initObj.hasOwnProperty('residual')) {
        this.residual = initObj.residual
      }
      else {
        this.residual = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugInfo
    // Serialize message field [timing]
    bufferOffset = _arraySerializer.float64(obj.timing, buffer, bufferOffset, null);
    // Serialize message field [sequence]
    bufferOffset = _serializer.int32(obj.sequence, buffer, bufferOffset);
    // Serialize message field [input_valid]
    bufferOffset = _serializer.bool(obj.input_valid, buffer, bufferOffset);
    // Serialize message field [residual]
    bufferOffset = _serializer.float64(obj.residual, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugInfo
    let len;
    let data = new DebugInfo(null);
    // Deserialize message field [timing]
    data.timing = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sequence]
    data.sequence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [input_valid]
    data.input_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [residual]
    data.residual = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.timing.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr2_mechanism_controllers/DebugInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6281356ce897e33da024b8eb319460f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] timing
    int32 sequence
    bool input_valid
    float64 residual
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DebugInfo(null);
    if (msg.timing !== undefined) {
      resolved.timing = msg.timing;
    }
    else {
      resolved.timing = []
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.input_valid !== undefined) {
      resolved.input_valid = msg.input_valid;
    }
    else {
      resolved.input_valid = false
    }

    if (msg.residual !== undefined) {
      resolved.residual = msg.residual;
    }
    else {
      resolved.residual = 0.0
    }

    return resolved;
    }
};

module.exports = DebugInfo;
