;; Auto-generated. Do not edit!


(when (boundp 'cs_msgs::Quality)
  (if (not (find-package "CS_MSGS"))
    (make-package "CS_MSGS"))
  (shadow 'Quality (find-package "CS_MSGS")))
(unless (find-package "CS_MSGS::QUALITY")
  (make-package "CS_MSGS::QUALITY"))
(unless (find-package "CS_MSGS::QUALITYREQUEST")
  (make-package "CS_MSGS::QUALITYREQUEST"))
(unless (find-package "CS_MSGS::QUALITYRESPONSE")
  (make-package "CS_MSGS::QUALITYRESPONSE"))

(in-package "ROS")





(defclass cs_msgs::QualityRequest
  :super ros::object
  :slots (_ID _result ))

(defmethod cs_msgs::QualityRequest
  (:init
   (&key
    ((:ID __ID) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _result (round __result))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int8 _ID
    1
    ;; int8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ID
       (write-byte _ID s)
     ;; int8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ID 127) (setq _ID (- _ID 256)))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;;
   self)
  )

(defclass cs_msgs::QualityResponse
  :super ros::object
  :slots (_confirmation ))

(defmethod cs_msgs::QualityResponse
  (:init
   (&key
    ((:confirmation __confirmation) "")
    )
   (send-super :init)
   (setq _confirmation (string __confirmation))
   self)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
  (:serialization-length
   ()
   (+
    ;; string _confirmation
    4 (length _confirmation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _confirmation
       (write-long (length _confirmation) s) (princ _confirmation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _confirmation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _confirmation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cs_msgs::Quality
  :super ros::object
  :slots ())

(setf (get cs_msgs::Quality :md5sum-) "f721ff84e587aebb5cf5b1c8881d373f")
(setf (get cs_msgs::Quality :datatype-) "cs_msgs/Quality")
(setf (get cs_msgs::Quality :request) cs_msgs::QualityRequest)
(setf (get cs_msgs::Quality :response) cs_msgs::QualityResponse)

(defmethod cs_msgs::QualityRequest
  (:response () (instance cs_msgs::QualityResponse :init)))

(setf (get cs_msgs::QualityRequest :md5sum-) "f721ff84e587aebb5cf5b1c8881d373f")
(setf (get cs_msgs::QualityRequest :datatype-) "cs_msgs/QualityRequest")
(setf (get cs_msgs::QualityRequest :definition-)
      "int8 ID #Product ID
int8 result #Percentage match
---
string confirmation #return confirmation

")

(setf (get cs_msgs::QualityResponse :md5sum-) "f721ff84e587aebb5cf5b1c8881d373f")
(setf (get cs_msgs::QualityResponse :datatype-) "cs_msgs/QualityResponse")
(setf (get cs_msgs::QualityResponse :definition-)
      "int8 ID #Product ID
int8 result #Percentage match
---
string confirmation #return confirmation

")



(provide :cs_msgs/Quality "f721ff84e587aebb5cf5b1c8881d373f")


