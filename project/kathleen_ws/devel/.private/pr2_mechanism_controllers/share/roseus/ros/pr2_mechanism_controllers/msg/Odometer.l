;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::Odometer)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'Odometer (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::ODOMETER")
  (make-package "PR2_MECHANISM_CONTROLLERS::ODOMETER"))

(in-package "ROS")
;;//! \htmlinclude Odometer.msg.html


(defclass pr2_mechanism_controllers::Odometer
  :super ros::object
  :slots (_distance _angle ))

(defmethod pr2_mechanism_controllers::Odometer
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::Odometer :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get pr2_mechanism_controllers::Odometer :datatype-) "pr2_mechanism_controllers/Odometer")
(setf (get pr2_mechanism_controllers::Odometer :definition-)
      "float64 distance #total distance traveled (meters)
float64 angle #total angle traveled (radians)
")



(provide :pr2_mechanism_controllers/Odometer "1f1d53743f4592ee455aa3eaf9019457")


