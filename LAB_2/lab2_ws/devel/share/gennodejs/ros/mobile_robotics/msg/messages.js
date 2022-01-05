// Auto-generated. Do not edit!

// (in-package mobile_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class messages {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.detections = null;
    }
    else {
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type messages
    // Serialize message field [seq]
    bufferOffset = _serializer.int64(obj.seq, buffer, bufferOffset);
    // Serialize message field [detections]
    bufferOffset = _serializer.uint8(obj.detections, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type messages
    let len;
    let data = new messages(null);
    // Deserialize message field [seq]
    data.seq = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [detections]
    data.detections = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_robotics/messages';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c426868eb8f37d0d04ef30507c49cff3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 seq
    uint8 detections
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new messages(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.detections !== undefined) {
      resolved.detections = msg.detections;
    }
    else {
      resolved.detections = 0
    }

    return resolved;
    }
};

module.exports = messages;
