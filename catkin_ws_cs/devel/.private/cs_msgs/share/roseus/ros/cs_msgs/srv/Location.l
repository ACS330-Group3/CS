;; Auto-generated. Do not edit!


(when (boundp 'cs_msgs::Location)
  (if (not (find-package "CS_MSGS"))
    (make-package "CS_MSGS"))
  (shadow 'Location (find-package "CS_MSGS")))
(unless (find-package "CS_MSGS::LOCATION")
  (make-package "CS_MSGS::LOCATION"))
(unless (find-package "CS_MSGS::LOCATIONREQUEST")
  (make-package "CS_MSGS::LOCATIONREQUEST"))
(unless (find-package "CS_MSGS::LOCATIONRESPONSE")
  (make-package "CS_MSGS::LOCATIONRESPONSE"))

(in-package "ROS")





(defclass cs_msgs::LocationRequest
  :super ros::object
  :slots (_ID ))

(defmethod cs_msgs::LocationRequest
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

(defclass cs_msgs::LocationResponse
  :super ros::object
  :slots (_station ))

(defmethod cs_msgs::LocationResponse
  (:init
   (&key
    ((:station __station) 0)
    )
   (send-super :init)
   (setq _station (round __station))
   self)
  (:station
   (&optional __station)
   (if __station (setq _station __station)) _station)
  (:serialization-length
   ()
   (+
    ;; int8 _station
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _station
       (write-byte _station s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _station
     (setq _station (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _station 127) (setq _station (- _station 256)))
   ;;
   self)
  )

(defclass cs_msgs::Location
  :super ros::object
  :slots ())

(setf (get cs_msgs::Location :md5sum-) "ccef7d34db997b060fe172638f5b079f")
(setf (get cs_msgs::Location :datatype-) "cs_msgs/Location")
(setf (get cs_msgs::Location :request) cs_msgs::LocationRequest)
(setf (get cs_msgs::Location :response) cs_msgs::LocationResponse)

(defmethod cs_msgs::LocationRequest
  (:response () (instance cs_msgs::LocationResponse :init)))

(setf (get cs_msgs::LocationRequest :md5sum-) "ccef7d34db997b060fe172638f5b079f")
(setf (get cs_msgs::LocationRequest :datatype-) "cs_msgs/LocationRequest")
(setf (get cs_msgs::LocationRequest :definition-)
      "int8 ID #Product ID
---
int8 station #Station Location

")

(setf (get cs_msgs::LocationResponse :md5sum-) "ccef7d34db997b060fe172638f5b079f")
(setf (get cs_msgs::LocationResponse :datatype-) "cs_msgs/LocationResponse")
(setf (get cs_msgs::LocationResponse :definition-)
      "int8 ID #Product ID
---
int8 station #Station Location

")



(provide :cs_msgs/Location "ccef7d34db997b060fe172638f5b079f")


