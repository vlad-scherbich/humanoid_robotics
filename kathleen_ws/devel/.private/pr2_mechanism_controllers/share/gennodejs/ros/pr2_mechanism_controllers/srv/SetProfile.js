// Auto-generated. Do not edit!

// (in-package pr2_mechanism_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetProfileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.UpperTurnaround = null;
      this.LowerTurnaround = null;
      this.upperDecelBuffer = null;
      this.lowerDecelBuffer = null;
      this.profile = null;
      this.period = null;
      this.amplitude = null;
      this.offset = null;
    }
    else {
      if (initObj.hasOwnProperty('UpperTurnaround')) {
        this.UpperTurnaround = initObj.UpperTurnaround
      }
      else {
        this.UpperTurnaround = 0.0;
      }
      if (initObj.hasOwnProperty('LowerTurnaround')) {
        this.LowerTurnaround = initObj.LowerTurnaround
      }
      else {
        this.LowerTurnaround = 0.0;
      }
      if (initObj.hasOwnProperty('upperDecelBuffer')) {
        this.upperDecelBuffer = initObj.upperDecelBuffer
      }
      else {
        this.upperDecelBuffer = 0.0;
      }
      if (initObj.hasOwnProperty('lowerDecelBuffer')) {
        this.lowerDecelBuffer = initObj.lowerDecelBuffer
      }
      else {
        this.lowerDecelBuffer = 0.0;
      }
      if (initObj.hasOwnProperty('profile')) {
        this.profile = initObj.profile
      }
      else {
        this.profile = 0.0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetProfileRequest
    // Serialize message field [UpperTurnaround]
    bufferOffset = _serializer.float64(obj.UpperTurnaround, buffer, bufferOffset);
    // Serialize message field [LowerTurnaround]
    bufferOffset = _serializer.float64(obj.LowerTurnaround, buffer, bufferOffset);
    // Serialize message field [upperDecelBuffer]
    bufferOffset = _serializer.float64(obj.upperDecelBuffer, buffer, bufferOffset);
    // Serialize message field [lowerDecelBuffer]
    bufferOffset = _serializer.float64(obj.lowerDecelBuffer, buffer, bufferOffset);
    // Serialize message field [profile]
    bufferOffset = _serializer.float64(obj.profile, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.float64(obj.period, buffer, bufferOffset);
    // Serialize message field [amplitude]
    bufferOffset = _serializer.float64(obj.amplitude, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float64(obj.offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProfileRequest
    let len;
    let data = new SetProfileRequest(null);
    // Deserialize message field [UpperTurnaround]
    data.UpperTurnaround = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LowerTurnaround]
    data.LowerTurnaround = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upperDecelBuffer]
    data.upperDecelBuffer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lowerDecelBuffer]
    data.lowerDecelBuffer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [profile]
    data.profile = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [amplitude]
    data.amplitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_mechanism_controllers/SetProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '309001fc196b0094f23b1ae2bd672fb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 UpperTurnaround
    float64 LowerTurnaround
    float64 upperDecelBuffer
    float64 lowerDecelBuffer
    float64 profile
    float64 period
    float64 amplitude
    float64 offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetProfileRequest(null);
    if (msg.UpperTurnaround !== undefined) {
      resolved.UpperTurnaround = msg.UpperTurnaround;
    }
    else {
      resolved.UpperTurnaround = 0.0
    }

    if (msg.LowerTurnaround !== undefined) {
      resolved.LowerTurnaround = msg.LowerTurnaround;
    }
    else {
      resolved.LowerTurnaround = 0.0
    }

    if (msg.upperDecelBuffer !== undefined) {
      resolved.upperDecelBuffer = msg.upperDecelBuffer;
    }
    else {
      resolved.upperDecelBuffer = 0.0
    }

    if (msg.lowerDecelBuffer !== undefined) {
      resolved.lowerDecelBuffer = msg.lowerDecelBuffer;
    }
    else {
      resolved.lowerDecelBuffer = 0.0
    }

    if (msg.profile !== undefined) {
      resolved.profile = msg.profile;
    }
    else {
      resolved.profile = 0.0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    if (msg.amplitude !== undefined) {
      resolved.amplitude = msg.amplitude;
    }
    else {
      resolved.amplitude = 0.0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    return resolved;
    }
};

class SetProfileResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetProfileResponse
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProfileResponse
    let len;
    let data = new SetProfileResponse(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_mechanism_controllers/SetProfileResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be5310e7aa4c90cdee120add91648cee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetProfileResponse(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetProfileRequest,
  Response: SetProfileResponse,
  md5sum() { return '2c429583cad60964651aba828d788a9a'; },
  datatype() { return 'pr2_mechanism_controllers/SetProfile'; }
};
