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
      this.pick_slide = null;
      this.pick_grasp = null;
      this.pick_turn = null;
      this.pick_lift = null;
      this.kick_roll = null;
      this.kick_fire = null;
      this.pass_tee = null;
    }
    else {
      if (initObj.hasOwnProperty('pick_slide')) {
        this.pick_slide = initObj.pick_slide
      }
      else {
        this.pick_slide = 0;
      }
      if (initObj.hasOwnProperty('pick_grasp')) {
        this.pick_grasp = initObj.pick_grasp
      }
      else {
        this.pick_grasp = 0;
      }
      if (initObj.hasOwnProperty('pick_turn')) {
        this.pick_turn = initObj.pick_turn
      }
      else {
        this.pick_turn = 0;
      }
      if (initObj.hasOwnProperty('pick_lift')) {
        this.pick_lift = initObj.pick_lift
      }
      else {
        this.pick_lift = 0;
      }
      if (initObj.hasOwnProperty('kick_roll')) {
        this.kick_roll = initObj.kick_roll
      }
      else {
        this.kick_roll = 0;
      }
      if (initObj.hasOwnProperty('kick_fire')) {
        this.kick_fire = initObj.kick_fire
      }
      else {
        this.kick_fire = 0;
      }
      if (initObj.hasOwnProperty('pass_tee')) {
        this.pass_tee = initObj.pass_tee
      }
      else {
        this.pass_tee = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrMsg
    // Serialize message field [pick_slide]
    bufferOffset = _serializer.int32(obj.pick_slide, buffer, bufferOffset);
    // Serialize message field [pick_grasp]
    bufferOffset = _serializer.int32(obj.pick_grasp, buffer, bufferOffset);
    // Serialize message field [pick_turn]
    bufferOffset = _serializer.int32(obj.pick_turn, buffer, bufferOffset);
    // Serialize message field [pick_lift]
    bufferOffset = _serializer.int32(obj.pick_lift, buffer, bufferOffset);
    // Serialize message field [kick_roll]
    bufferOffset = _serializer.int32(obj.kick_roll, buffer, bufferOffset);
    // Serialize message field [kick_fire]
    bufferOffset = _serializer.int32(obj.kick_fire, buffer, bufferOffset);
    // Serialize message field [pass_tee]
    bufferOffset = _serializer.int32(obj.pass_tee, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrMsg
    let len;
    let data = new PrMsg(null);
    // Deserialize message field [pick_slide]
    data.pick_slide = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pick_grasp]
    data.pick_grasp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pick_turn]
    data.pick_turn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pick_lift]
    data.pick_lift = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kick_roll]
    data.kick_roll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kick_fire]
    data.kick_fire = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pass_tee]
    data.pass_tee = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr_msg/PrMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b7477fdb01b1f98d79601f95a7c0be2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pick_slide
    int32 pick_grasp
    int32 pick_turn
    int32 pick_lift
    int32 kick_roll
    int32 kick_fire
    int32 pass_tee
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrMsg(null);
    if (msg.pick_slide !== undefined) {
      resolved.pick_slide = msg.pick_slide;
    }
    else {
      resolved.pick_slide = 0
    }

    if (msg.pick_grasp !== undefined) {
      resolved.pick_grasp = msg.pick_grasp;
    }
    else {
      resolved.pick_grasp = 0
    }

    if (msg.pick_turn !== undefined) {
      resolved.pick_turn = msg.pick_turn;
    }
    else {
      resolved.pick_turn = 0
    }

    if (msg.pick_lift !== undefined) {
      resolved.pick_lift = msg.pick_lift;
    }
    else {
      resolved.pick_lift = 0
    }

    if (msg.kick_roll !== undefined) {
      resolved.kick_roll = msg.kick_roll;
    }
    else {
      resolved.kick_roll = 0
    }

    if (msg.kick_fire !== undefined) {
      resolved.kick_fire = msg.kick_fire;
    }
    else {
      resolved.kick_fire = 0
    }

    if (msg.pass_tee !== undefined) {
      resolved.pass_tee = msg.pass_tee;
    }
    else {
      resolved.pass_tee = 0
    }

    return resolved;
    }
};

module.exports = PrMsg;
