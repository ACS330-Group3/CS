// Auto-generated. Do not edit!

// (in-package cs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationRequest
    // Serialize message field [ID]
    bufferOffset = _serializer.int8(obj.ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationRequest
    let len;
    let data = new LocationRequest(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cs_msgs/LocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cb5143ed23a5de01874507c8711c4d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ID #Product ID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocationRequest(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    return resolved;
    }
};

class LocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.station = null;
    }
    else {
      if (initObj.hasOwnProperty('station')) {
        this.station = initObj.station
      }
      else {
        this.station = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationResponse
    // Serialize message field [station]
    bufferOffset = _serializer.int8(obj.station, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationResponse
    let len;
    let data = new LocationResponse(null);
    // Deserialize message field [station]
    data.station = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cs_msgs/LocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b988d96a32f6b6cc755554dfacda684';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 station #Station Location
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocationResponse(null);
    if (msg.station !== undefined) {
      resolved.station = msg.station;
    }
    else {
      resolved.station = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: LocationRequest,
  Response: LocationResponse,
  md5sum() { return 'ccef7d34db997b060fe172638f5b079f'; },
  datatype() { return 'cs_msgs/Location'; }
};
