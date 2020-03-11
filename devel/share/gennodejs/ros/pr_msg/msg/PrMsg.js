// Auto-generated. Do not edit!

// (in-package pr_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PrMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pick_ball = null;
      this.pass_ball = null;
      this.load_ball = null;
      this.kick_ball = null;
    }
    else {
      if (initObj.hasOwnProperty('pick_ball')) {
        this.pick_ball = initObj.pick_ball
      }
      else {
        this.pick_ball = 0;
      }
      if (initObj.hasOwnProperty('pass_ball')) {
        this.pass_ball = initObj.pass_ball
      }
      else {
        this.pass_ball = 0;
      }
      if (initObj.hasOwnProperty('load_ball')) {
        this.load_ball = initObj.load_ball
      }
      else {
        this.load_ball = 0;
      }
      if (initObj.hasOwnProperty('kick_ball')) {
        this.kick_ball = initObj.kick_ball
      }
      else {
        this.kick_ball = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrMsg
    // Serialize message field [pick_ball]
    bufferOffset = _serializer.int32(obj.pick_ball, buffer, bufferOffset);
    // Serialize message field [pass_ball]
    bufferOffset = _serializer.int32(obj.pass_ball, buffer, bufferOffset);
    // Serialize message field [load_ball]
    bufferOffset = _serializer.int32(obj.load_ball, buffer, bufferOffset);
    // Serialize message field [kick_ball]
    bufferOffset = _serializer.int32(obj.kick_ball, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrMsg
    let len;
    let data = new PrMsg(null);
    // Deserialize message field [pick_ball]
    data.pick_ball = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pass_ball]
    data.pass_ball = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [load_ball]
    data.load_ball = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kick_ball]
    data.kick_ball = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr_msg/PrMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef8e6c4f42267afdb6b4ce014b5df775';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pick_ball
    int32 pass_ball
    int32 load_ball
    int32 kick_ball
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrMsg(null);
    if (msg.pick_ball !== undefined) {
      resolved.pick_ball = msg.pick_ball;
    }
    else {
      resolved.pick_ball = 0
    }

    if (msg.pass_ball !== undefined) {
      resolved.pass_ball = msg.pass_ball;
    }
    else {
      resolved.pass_ball = 0
    }

    if (msg.load_ball !== undefined) {
      resolved.load_ball = msg.load_ball;
    }
    else {
      resolved.load_ball = 0
    }

    if (msg.kick_ball !== undefined) {
      resolved.kick_ball = msg.kick_ball;
    }
    else {
      resolved.kick_ball = 0
    }

    return resolved;
    }
};

module.exports = PrMsg;
