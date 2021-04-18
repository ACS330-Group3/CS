
(cl:in-package :asdf)

(defsystem "cs_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Images" :depends-on ("_package_Images"))
    (:file "_package_Images" :depends-on ("_package"))
    (:file "Location" :depends-on ("_package_Location"))
    (:file "_package_Location" :depends-on ("_package"))
    (:file "Quality" :depends-on ("_package_Quality"))
    (:file "_package_Quality" :depends-on ("_package"))
  ))