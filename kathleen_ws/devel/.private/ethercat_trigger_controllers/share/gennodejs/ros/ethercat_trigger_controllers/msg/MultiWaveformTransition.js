// Auto-generated. Do not edit!

// (in-package ethercat_trigger_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MultiWaveformTransition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.value = null;
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiWaveformTransition
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiWaveformTransition
    let len;
    let data = new MultiWaveformTransition(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ethercat_trigger_controllers/MultiWaveformTransition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdd47e5d1c3d77473af2df9833a0608a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MultiWaveformTransition(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

module.exports = MultiWaveformTransition;
