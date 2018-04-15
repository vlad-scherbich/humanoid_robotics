// Auto-generated. Do not edit!

// (in-package robot_controllers_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DiffDriveLimiterParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_linear_velocity = null;
      this.max_linear_acceleration = null;
      this.max_angular_velocity = null;
      this.max_angular_acceleration = null;
      this.max_wheel_velocity = null;
      this.track_width = null;
      this.angular_velocity_limits_linear_velocity = null;
      this.scale_to_wheel_velocity_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('max_linear_velocity')) {
        this.max_linear_velocity = initObj.max_linear_velocity
      }
      else {
        this.max_linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_acceleration')) {
        this.max_linear_acceleration = initObj.max_linear_acceleration
      }
      else {
        this.max_linear_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_velocity')) {
        this.max_angular_velocity = initObj.max_angular_velocity
      }
      else {
        this.max_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_acceleration')) {
        this.max_angular_acceleration = initObj.max_angular_acceleration
      }
      else {
        this.max_angular_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('max_wheel_velocity')) {
        this.max_wheel_velocity = initObj.max_wheel_velocity
      }
      else {
        this.max_wheel_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('track_width')) {
        this.track_width = initObj.track_width
      }
      else {
        this.track_width = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_limits_linear_velocity')) {
        this.angular_velocity_limits_linear_velocity = initObj.angular_velocity_limits_linear_velocity
      }
      else {
        this.angular_velocity_limits_linear_velocity = false;
      }
      if (initObj.hasOwnProperty('scale_to_wheel_velocity_limits')) {
        this.scale_to_wheel_velocity_limits = initObj.scale_to_wheel_velocity_limits
      }
      else {
        this.scale_to_wheel_velocity_limits = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiffDriveLimiterParams
    // Serialize message field [max_linear_velocity]
    bufferOffset = _serializer.float64(obj.max_linear_velocity, buffer, bufferOffset);
    // Serialize message field [max_linear_acceleration]
    bufferOffset = _serializer.float64(obj.max_linear_acceleration, buffer, bufferOffset);
    // Serialize message field [max_angular_velocity]
    bufferOffset = _serializer.float64(obj.max_angular_velocity, buffer, bufferOffset);
    // Serialize message field [max_angular_acceleration]
    bufferOffset = _serializer.float64(obj.max_angular_acceleration, buffer, bufferOffset);
    // Serialize message field [max_wheel_velocity]
    bufferOffset = _serializer.float64(obj.max_wheel_velocity, buffer, bufferOffset);
    // Serialize message field [track_width]
    bufferOffset = _serializer.float64(obj.track_width, buffer, bufferOffset);
    // Serialize message field [angular_velocity_limits_linear_velocity]
    bufferOffset = _serializer.bool(obj.angular_velocity_limits_linear_velocity, buffer, bufferOffset);
    // Serialize message field [scale_to_wheel_velocity_limits]
    bufferOffset = _serializer.bool(obj.scale_to_wheel_velocity_limits, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiffDriveLimiterParams
    let len;
    let data = new DiffDriveLimiterParams(null);
    // Deserialize message field [max_linear_velocity]
    data.max_linear_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear_acceleration]
    data.max_linear_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_angular_velocity]
    data.max_angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_angular_acceleration]
    data.max_angular_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_wheel_velocity]
    data.max_wheel_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_width]
    data.track_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_limits_linear_velocity]
    data.angular_velocity_limits_linear_velocity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scale_to_wheel_velocity_limits]
    data.scale_to_wheel_velocity_limits = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_controllers_msgs/DiffDriveLimiterParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c438ebbdf2d3d45fdfb67f5ba9e6ca3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Various parameters for diff driver base velocity and acceleration limiter
    # This message allows limits that would imposed by diff_drive_base
    # to be understood by other components without needing access to 
    # same set of rosparams, or URDF settings
    
    float64 max_linear_velocity
    float64 max_linear_acceleration
    
    float64 max_angular_velocity
    float64 max_angular_acceleration
    
    # Wheel velocity limit are linear velocity (m/s) not angular velocities (rad/s)
    float64 max_wheel_velocity
    
    # distance between two wheels 
    # used for calculating wheel velocities from angular velocity
    float64 track_width
    
    # If true limiter will reduce linear velocity
    # when angular velocity is beyond limit so
    # so path curvature is maintained
    bool angular_velocity_limits_linear_velocity
    
    # If true, linear and angular velocities will 
    # scaled if wheel velocities beyond limits
    # so path curvature is maintained
    # otherwise wheel velocities are limited independently
    bool scale_to_wheel_velocity_limits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiffDriveLimiterParams(null);
    if (msg.max_linear_velocity !== undefined) {
      resolved.max_linear_velocity = msg.max_linear_velocity;
    }
    else {
      resolved.max_linear_velocity = 0.0
    }

    if (msg.max_linear_acceleration !== undefined) {
      resolved.max_linear_acceleration = msg.max_linear_acceleration;
    }
    else {
      resolved.max_linear_acceleration = 0.0
    }

    if (msg.max_angular_velocity !== undefined) {
      resolved.max_angular_velocity = msg.max_angular_velocity;
    }
    else {
      resolved.max_angular_velocity = 0.0
    }

    if (msg.max_angular_acceleration !== undefined) {
      resolved.max_angular_acceleration = msg.max_angular_acceleration;
    }
    else {
      resolved.max_angular_acceleration = 0.0
    }

    if (msg.max_wheel_velocity !== undefined) {
      resolved.max_wheel_velocity = msg.max_wheel_velocity;
    }
    else {
      resolved.max_wheel_velocity = 0.0
    }

    if (msg.track_width !== undefined) {
      resolved.track_width = msg.track_width;
    }
    else {
      resolved.track_width = 0.0
    }

    if (msg.angular_velocity_limits_linear_velocity !== undefined) {
      resolved.angular_velocity_limits_linear_velocity = msg.angular_velocity_limits_linear_velocity;
    }
    else {
      resolved.angular_velocity_limits_linear_velocity = false
    }

    if (msg.scale_to_wheel_velocity_limits !== undefined) {
      resolved.scale_to_wheel_velocity_limits = msg.scale_to_wheel_velocity_limits;
    }
    else {
      resolved.scale_to_wheel_velocity_limits = false
    }

    return resolved;
    }
};

module.exports = DiffDriveLimiterParams;
