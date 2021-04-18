;; Auto-generated. Do not edit!


(when (boundp 'cs_msgs::Images)
  (if (not (find-package "CS_MSGS"))
    (make-package "CS_MSGS"))
  (shadow 'Images (find-package "CS_MSGS")))
(unless (find-package "CS_MSGS::IMAGES")
  (make-package "CS_MSGS::IMAGES"))
(unless (find-package "CS_MSGS::IMAGESREQUEST")
  (make-package "CS_MSGS::IMAGESREQUEST"))
(unless (find-package "CS_MSGS::IMAGESRESPONSE")
  (make-package "CS_MSGS::IMAGESRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass cs_msgs::ImagesRequest
  :super ros::object
  :slots (_ID ))

(defmethod cs_msgs::ImagesRequest
  (:init
   (&key
    ((:ID __ID) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:serialization-length
   ()
   (+
    ;; int8 _ID
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ID
       (write-byte _ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ID 127) (setq _ID (- _ID 256)))
   ;;
   self)
  )

(defclass cs_msgs::ImagesResponse
  :super ros::object
  :slots (_im ))

(defmethod cs_msgs::ImagesResponse
  (:init
   (&key
    ((:im __im) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _im __im)
   self)
  (:im
   (&rest __im)
   (if (keywordp (car __im))
       (send* _im __im)
     (progn
       (if __im (setq _im (car __im)))
       _im)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _im
    (send _im :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _im
       (send _im :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _im
     (send _im :deserialize buf ptr-) (incf ptr- (send _im :serialization-length))
   ;;
   self)
  )

(defclass cs_msgs::Images
  :super ros::object
  :slots ())

(setf (get cs_msgs::Images :md5sum-) "91be00f47290e385ef09fee48611aeee")
(setf (get cs_msgs::Images :datatype-) "cs_msgs/Images")
(setf (get cs_msgs::Images :request) cs_msgs::ImagesRequest)
(setf (get cs_msgs::Images :response) cs_msgs::ImagesResponse)

(defmethod cs_msgs::ImagesRequest
  (:response () (instance cs_msgs::ImagesResponse :init)))

(setf (get cs_msgs::ImagesRequest :md5sum-) "91be00f47290e385ef09fee48611aeee")
(setf (get cs_msgs::ImagesRequest :datatype-) "cs_msgs/ImagesRequest")
(setf (get cs_msgs::ImagesRequest :definition-)
      "int8 ID #Sends the product ID
---
sensor_msgs/Image im #Sends the images


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get cs_msgs::ImagesResponse :md5sum-) "91be00f47290e385ef09fee48611aeee")
(setf (get cs_msgs::ImagesResponse :datatype-) "cs_msgs/ImagesResponse")
(setf (get cs_msgs::ImagesResponse :definition-)
      "int8 ID #Sends the product ID
---
sensor_msgs/Image im #Sends the images


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :cs_msgs/Images "91be00f47290e385ef09fee48611aeee")


