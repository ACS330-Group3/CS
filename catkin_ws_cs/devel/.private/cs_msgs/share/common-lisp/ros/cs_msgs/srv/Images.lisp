; Auto-generated. Do not edit!


(cl:in-package cs_msgs-srv)


;//! \htmlinclude Images-request.msg.html

(cl:defclass <Images-request> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Images-request (<Images-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Images-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Images-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Images-request> is deprecated: use cs_msgs-srv:Images-request instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Images-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:ID-val is deprecated.  Use cs_msgs-srv:ID instead.")
  (ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Images-request>) ostream)
  "Serializes a message object of type '<Images-request>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Images-request>) istream)
  "Deserializes a message object of type '<Images-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Images-request>)))
  "Returns string type for a service object of type '<Images-request>"
  "cs_msgs/ImagesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Images-request)))
  "Returns string type for a service object of type 'Images-request"
  "cs_msgs/ImagesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Images-request>)))
  "Returns md5sum for a message object of type '<Images-request>"
  "91be00f47290e385ef09fee48611aeee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Images-request)))
  "Returns md5sum for a message object of type 'Images-request"
  "91be00f47290e385ef09fee48611aeee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Images-request>)))
  "Returns full string definition for message of type '<Images-request>"
  (cl:format cl:nil "int8 ID #Sends the product ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Images-request)))
  "Returns full string definition for message of type 'Images-request"
  (cl:format cl:nil "int8 ID #Sends the product ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Images-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Images-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Images-request
    (cl:cons ':ID (ID msg))
))
;//! \htmlinclude Images-response.msg.html

(cl:defclass <Images-response> (roslisp-msg-protocol:ros-message)
  ((im
    :reader im
    :initarg :im
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Images-response (<Images-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Images-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Images-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cs_msgs-srv:<Images-response> is deprecated: use cs_msgs-srv:Images-response instead.")))

(cl:ensure-generic-function 'im-val :lambda-list '(m))
(cl:defmethod im-val ((m <Images-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cs_msgs-srv:im-val is deprecated.  Use cs_msgs-srv:im instead.")
  (im m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Images-response>) ostream)
  "Serializes a message object of type '<Images-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'im) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Images-response>) istream)
  "Deserializes a message object of type '<Images-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'im) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Images-response>)))
  "Returns string type for a service object of type '<Images-response>"
  "cs_msgs/ImagesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Images-response)))
  "Returns string type for a service object of type 'Images-response"
  "cs_msgs/ImagesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Images-response>)))
  "Returns md5sum for a message object of type '<Images-response>"
  "91be00f47290e385ef09fee48611aeee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Images-response)))
  "Returns md5sum for a message object of type 'Images-response"
  "91be00f47290e385ef09fee48611aeee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Images-response>)))
  "Returns full string definition for message of type '<Images-response>"
  (cl:format cl:nil "sensor_msgs/Image im #Sends the images~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Images-response)))
  "Returns full string definition for message of type 'Images-response"
  (cl:format cl:nil "sensor_msgs/Image im #Sends the images~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Images-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'im))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Images-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Images-response
    (cl:cons ':im (im msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Images)))
  'Images-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Images)))
  'Images-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Images)))
  "Returns string type for a service object of type '<Images>"
  "cs_msgs/Images")