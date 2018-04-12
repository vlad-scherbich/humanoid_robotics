// Auto-generated. Do not edit!

// (in-package ethercat_trigger_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWaveformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rep_rate = null;
      this.phase = null;
      this.duty_cycle = null;
      this.running = null;
      this.active_low = null;
      this.pulsed = null;
    }
    else {
      if (initObj.hasOwnProperty('rep_rate')) {
        this.rep_rate = initObj.rep_rate
      }
      else {
        this.rep_rate = 0.0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0.0;
      }
      if (initObj.hasOwnProperty('duty_cycle')) {
        this.duty_cycle = initObj.duty_cycle
      }
      else {
        this.duty_cycle = 0.0;
      }
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = 0;
      }
      if (initObj.hasOwnProperty('active_low')) {
        this.active_low = initObj.active_low
      }
      else {
        this.active_low = 0;
      }
      if (initObj.hasOwnProperty('pulsed')) {
        this.pulsed = initObj.pulsed
      }
      else {
        this.pulsed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWaveformRequest
    // Serialize message field [rep_rate]
    bufferOffset = _serializer.float64(obj.rep_rate, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.float64(obj.phase, buffer, bufferOffset);
    // Serialize message field [duty_cycle]
    bufferOffset = _serializer.float64(obj.duty_cycle, buffer, bufferOffset);
    // Serialize message field [running]
    bufferOffset = _serializer.int32(obj.running, buffer, bufferOffset);
    // Serialize message field [active_low]
    bufferOffset = _serializer.int32(obj.active_low, buffer, bufferOffset);
    // Serialize message field [pulsed]
    bufferOffset = _serializer.int32(obj.pulsed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWaveformRequest
    let len;
    let data = new SetWaveformRequest(null);
    // Deserialize message field [rep_rate]
    data.rep_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duty_cycle]
    data.duty_cycle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [running]
    data.running = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [active_low]
    data.active_low = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pulsed]
    data.pulsed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethercat_trigger_controllers/SetWaveformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '988450e1ddd386f3967c381c19b2330c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rep_rate
    float64 phase
    float64 duty_cycle
    int32 running
    int32 active_low
    int32 pulsed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWaveformRequest(null);
    if (msg.rep_rate !== undefined) {
      resolved.rep_rate = msg.rep_rate;
    }
    else {
      resolved.rep_rate = 0.0
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0.0
    }

    if (msg.duty_cycle !== undefined) {
      resolved.duty_cycle = msg.duty_cycle;
    }
    else {
      resolved.duty_cycle = 0.0
    }

    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = 0
    }

    if (msg.active_low !== undefined) {
      resolved.active_low = msg.active_low;
    }
    else {
      resolved.active_low = 0
    }

    if (msg.pulsed !== undefined) {
      resolved.pulsed = msg.pulsed;
    }
    else {
      resolved.pulsed = 0
    }

    return resolved;
    }
};

class SetWaveformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWaveformResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWaveformResponse
    let len;
    let data = new SetWaveformResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethercat_trigger_controllers/SetWaveformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWaveformResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetWaveformRequest,
  Response: SetWaveformResponse,
  md5sum() { return '988450e1ddd386f3967c381c19b2330c'; },
  datatype() { return 'ethercat_trigger_controllers/SetWaveform'; }
};
