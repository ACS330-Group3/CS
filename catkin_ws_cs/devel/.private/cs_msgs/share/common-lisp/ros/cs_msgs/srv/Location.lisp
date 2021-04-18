; Auto-generated. Do not edit!


(cl:in-package cs_msgs-srv)


;//! \htmlinclude Location-request.msg.html

(cl:defclass <Location-request> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Location-request (<Location-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Location-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Location-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Location-request> is deprecated: use cs_msgs-srv:Location-request instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Location-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:ID-val is deprecated.  Use cs_msgs-srv:ID instead.")
  (ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Location-request>) ostream)
  "Serializes a message object of type '<Location-request>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Location-request>) istream)
  "Deserializes a message object of type '<Location-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Location-request>)))
  "Returns string type for a service object of type '<Location-request>"
  "cs_msgs/LocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location-request)))
  "Returns string type for a service object of type 'Location-request"
  "cs_msgs/LocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Location-request>)))
  "Returns md5sum for a message object of type '<Location-request>"
  "ccef7d34db997b060fe172638f5b079f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Location-request)))
  "Returns md5sum for a message object of type 'Location-request"
  "ccef7d34db997b060fe172638f5b079f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Location-request>)))
  "Returns full string definition for message of type '<Location-request>"
  (cl:format cl:nil "int8 ID #Product ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Location-request)))
  "Returns full string definition for message of type 'Location-request"
  (cl:format cl:nil "int8 ID #Product ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Location-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Location-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Location-request
    (cl:cons ':ID (ID msg))
))
;//! \htmlinclude Location-response.msg.html

(cl:defclass <Location-response> (roslisp-msg-protocol:ros-message)
  ((station
    :reader station
    :initarg :station
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Location-response (<Location-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Location-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Location-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Location-response> is deprecated: use cs_msgs-srv:Location-response instead.")))

(cl:ensure-generic-function 'station-val :lambda-list '(m))
(cl:defmethod station-val ((m <Location-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:station-val is deprecated.  Use cs_msgs-srv:station instead.")
  (station m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Location-response>) ostream)
  "Serializes a message object of type '<Location-response>"
  (cl:let* ((signed (cl:slot-value msg 'station)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Location-response>) istream)
  "Deserializes a message object of type '<Location-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Location-response>)))
  "Returns string type for a service object of type '<Location-response>"
  "cs_msgs/LocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location-response)))
  "Returns string type for a service object of type 'Location-response"
  "cs_msgs/LocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Location-response>)))
  "Returns md5sum for a message object of type '<Location-response>"
  "ccef7d34db997b060fe172638f5b079f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Location-response)))
  "Returns md5sum for a message object of type 'Location-response"
  "ccef7d34db997b060fe172638f5b079f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Location-response>)))
  "Returns full string definition for message of type '<Location-response>"
  (cl:format cl:nil "int8 station #Station Location~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Location-response)))
  "Returns full string definition for message of type 'Location-response"
  (cl:format cl:nil "int8 station #Station Location~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Location-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Location-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Location-response
    (cl:cons ':station (station msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Location)))
  'Location-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Location)))
  'Location-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location)))
  "Returns string type for a service object of type '<Location>"
  "cs_msgs/Location")