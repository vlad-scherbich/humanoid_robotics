;; Auto-generated. Do not edit!


(when (boundp 'grasping_msgs::ObjectProperty)
  (if (not (find-package "GRASPING_MSGS"))
    (make-package "GRASPING_MSGS"))
  (shadow 'ObjectProperty (find-package "GRASPING_MSGS")))
(unless (find-package "GRASPING_MSGS::OBJECTPROPERTY")
  (make-package "GRASPING_MSGS::OBJECTPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude ObjectProperty.msg.html


(defclass grasping_msgs::ObjectProperty
  :super ros::object
  :slots (_name _value ))

(defmethod grasping_msgs::ObjectProperty
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (string __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get grasping_msgs::ObjectProperty :md5sum-) "bc6ccc4a57f61779c8eaae61e9f422e0")
(setf (get grasping_msgs::ObjectProperty :datatype-) "grasping_msgs/ObjectProperty")
(setf (get grasping_msgs::ObjectProperty :definition-)
      "###########################################################
# Other generic properties of an object
string name
string value

")



(provide :grasping_msgs/ObjectProperty "bc6ccc4a57f61779c8eaae61e9f422e0")


