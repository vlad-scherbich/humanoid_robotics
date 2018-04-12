// Auto-generated. Do not edit!

// (in-package ethercat_trigger_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MultiWaveformTransition = require('./MultiWaveformTransition.js');

//-----------------------------------------------------------

class MultiWaveform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.period = null;
      this.zero_offset = null;
      this.transitions = null;
    }
    else {
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
      if (initObj.hasOwnProperty('zero_offset')) {
        this.zero_offset = initObj.zero_offset
      }
      else {
        this.zero_offset = 0.0;
      }
      if (initObj.hasOwnProperty('transitions')) {
        this.transitions = initObj.transitions
      }
      else {
        this.transitions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiWaveform
    // Serialize message field [period]
    bufferOffset = _serializer.float64(obj.period, buffer, bufferOffset);
    // Serialize message field [zero_offset]
    bufferOffset = _serializer.float64(obj.zero_offset, buffer, bufferOffset);
    // Serialize message field [transitions]
    // Serialize the length for message field [transitions]
    bufferOffset = _serializer.uint32(obj.transitions.length, buffer, bufferOffset);
    obj.transitions.forEach((val) => {
      bufferOffset = MultiWaveformTransition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiWaveform
    let len;
    let data = new MultiWaveform(null);
    // Deserialize message field [period]
    data.period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zero_offset]
    data.zero_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [transitions]
    // Deserialize array length for message field [transitions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transitions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transitions[i] = MultiWaveformTransition.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.transitions.forEach((val) => {
      length += MultiWaveformTransition.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ethercat_trigger_controllers/MultiWaveform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a8e166563c159e73f391a302e7b37f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MultiWaveform(null);
    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    if (msg.zero_offset !== undefined) {
      resolved.zero_offset = msg.zero_offset;
    }
    else {
      resolved.zero_offset = 0.0
    }

    if (msg.transitions !== undefined) {
      resolved.transitions = new Array(msg.transitions.length);
      for (let i = 0; i < resolved.transitions.length; ++i) {
        resolved.transitions[i] = MultiWaveformTransition.Resolve(msg.transitions[i]);
      }
    }
    else {
      resolved.transitions = []
    }

    return resolved;
    }
};

module.exports = MultiWaveform;
