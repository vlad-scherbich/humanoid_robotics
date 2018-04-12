// Auto-generated. Do not edit!

// (in-package ethercat_trigger_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MultiWaveform = require('../msg/MultiWaveform.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMultiWaveformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waveform = null;
    }
    else {
      if (initObj.hasOwnProperty('waveform')) {
        this.waveform = initObj.waveform
      }
      else {
        this.waveform = new MultiWaveform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMultiWaveformRequest
    // Serialize message field [waveform]
    bufferOffset = MultiWaveform.serialize(obj.waveform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMultiWaveformRequest
    let len;
    let data = new SetMultiWaveformRequest(null);
    // Deserialize message field [waveform]
    data.waveform = MultiWaveform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MultiWaveform.getMessageSize(object.waveform);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethercat_trigger_controllers/SetMultiWaveformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfedad8205348a9bcc90e6ae4b778d86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MultiWaveform waveform
    
    ================================================================================
    MSG: ethercat_trigger_controllers/MultiWaveform
    # Transitions will occur at k * period + zero_offset + transitions[j].time, where j and
    # k are integers.
    
    float64 period # Period of the waveform in seconds.
    float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds
    MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)
    
    ================================================================================
    MSG: ethercat_trigger_controllers/MultiWaveformTransition
    # Used to specify a transition in the SetMultiWaveform service.
    
    float64 time # Transition time after start of period.
    uint32 value # Value of the digital output after the transition time.
    string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMultiWaveformRequest(null);
    if (msg.waveform !== undefined) {
      resolved.waveform = MultiWaveform.Resolve(msg.waveform)
    }
    else {
      resolved.waveform = new MultiWaveform()
    }

    return resolved;
    }
};

class SetMultiWaveformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMultiWaveformResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMultiWaveformResponse
    let len;
    let data = new SetMultiWaveformResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethercat_trigger_controllers/SetMultiWaveformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec6f3eff0161f4257b808b12bc830c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMultiWaveformResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMultiWaveformRequest,
  Response: SetMultiWaveformResponse,
  md5sum() { return 'cbb7e900a71a9a437da9999c8d39fff4'; },
  datatype() { return 'ethercat_trigger_controllers/SetMultiWaveform'; }
};
