; Auto-generated. Do not edit!


(cl:in-package cs_msgs-srv)


;//! \htmlinclude Quality-request.msg.html

(cl:defclass <Quality-request> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Quality-request (<Quality-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Quality-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Quality-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Quality-request> is deprecated: use cs_msgs-srv:Quality-request instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Quality-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:ID-val is deprecated.  Use cs_msgs-srv:ID instead.")
  (ID m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Quality-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:result-val is deprecated.  Use cs_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Quality-request>) ostream)
  "Serializes a message object of type '<Quality-request>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Quality-request>) istream)
  "Deserializes a message object of type '<Quality-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Quality-request>)))
  "Returns string type for a service object of type '<Quality-request>"
  "cs_msgs/QualityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Quality-request)))
  "Returns string type for a service object of type 'Quality-request"
  "cs_msgs/QualityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Quality-request>)))
  "Returns md5sum for a message object of type '<Quality-request>"
  "f721ff84e587aebb5cf5b1c8881d373f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Quality-request)))
  "Returns md5sum for a message object of type 'Quality-request"
  "f721ff84e587aebb5cf5b1c8881d373f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Quality-request>)))
  "Returns full string definition for message of type '<Quality-request>"
  (cl:format cl:nil "int8 ID #Product ID~%int8 result #Percentage match~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Quality-request)))
  "Returns full string definition for message of type 'Quality-request"
  (cl:format cl:nil "int8 ID #Product ID~%int8 result #Percentage match~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Quality-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Quality-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Quality-request
    (cl:cons ':ID (ID msg))
    (cl:cons ':result (result msg))
))
;//! \htmlinclude Quality-response.msg.html

(cl:defclass <Quality-response> (roslisp-msg-protocol:ros-message)
  ((confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:string
    :initform ""))
)

(cl:defclass Quality-response (<Quality-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Quality-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Quality-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Quality-response> is deprecated: use cs_msgs-srv:Quality-response instead.")))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <Quality-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:confirmation-val is deprecated.  Use cs_msgs-srv:confirmation instead.")
  (confirmation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Quality-response>) ostream)
  "Serializes a message object of type '<Quality-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'confirmation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'confirmation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Quality-response>) istream)
  "Deserializes a message object of type '<Quality-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confirmation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'confirmation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Quality-response>)))
  "Returns string type for a service object of type '<Quality-response>"
  "cs_msgs/QualityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Quality-response)))
  "Returns string type for a service object of type 'Quality-response"
  "cs_msgs/QualityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Quality-response>)))
  "Returns md5sum for a message object of type '<Quality-response>"
  "f721ff84e587aebb5cf5b1c8881d373f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Quality-response)))
  "Returns md5sum for a message object of type 'Quality-response"
  "f721ff84e587aebb5cf5b1c8881d373f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Quality-response>)))
  "Returns full string definition for message of type '<Quality-response>"
  (cl:format cl:nil "string confirmation #return confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Quality-response)))
  "Returns full string definition for message of type 'Quality-response"
  (cl:format cl:nil "string confirmation #return confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Quality-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'confirmation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Quality-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Quality-response
    (cl:cons ':confirmation (confirmation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Quality)))
  'Quality-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Quality)))
  'Quality-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Quality)))
  "Returns string type for a service object of type '<Quality>"
  "cs_msgs/Quality")