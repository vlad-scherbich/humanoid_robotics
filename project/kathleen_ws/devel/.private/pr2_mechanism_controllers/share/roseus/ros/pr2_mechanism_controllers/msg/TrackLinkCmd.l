;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::TrackLinkCmd)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'TrackLinkCmd (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::TRACKLINKCMD")
  (make-package "PR2_MECHANISM_CONTROLLERS::TRACKLINKCMD"))

(in-package "ROS")
;;//! \htmlinclude TrackLinkCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pr2_mechanism_controllers::TrackLinkCmd
  :super ros::object
  :slots (_enable _link_name _point ))

(defmethod pr2_mechanism_controllers::TrackLinkCmd
  (:init
   (&key
    ((:enable __enable) 0)
    ((:link_name __link_name) "")
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _enable (round __enable))
   (setq _link_name (string __link_name))
   (setq _point __point)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; int8 _enable
    1
    ;; string _link_name
    4 (length _link_name)
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _enable
       (write-byte _enable s)
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _enable 127) (setq _enable (- _enable 256)))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::TrackLinkCmd :md5sum-) "08ccfe603e4e21c792896712c3b72de2")
(setf (get pr2_mechanism_controllers::TrackLinkCmd :datatype-) "pr2_mechanism_controllers/TrackLinkCmd")
(setf (get pr2_mechanism_controllers::TrackLinkCmd :definition-)
      "int8 enable
string link_name
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pr2_mechanism_controllers/TrackLinkCmd "08ccfe603e4e21c792896712c3b72de2")


