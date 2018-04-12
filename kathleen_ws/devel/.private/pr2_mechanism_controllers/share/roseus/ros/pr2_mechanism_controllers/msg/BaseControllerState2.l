;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::BaseControllerState2)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'BaseControllerState2 (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::BASECONTROLLERSTATE2")
  (make-package "PR2_MECHANISM_CONTROLLERS::BASECONTROLLERSTATE2"))

(in-package "ROS")
;;//! \htmlinclude BaseControllerState2.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pr2_mechanism_controllers::BaseControllerState2
  :super ros::object
  :slots (_command _joint_command _joint_error _joint_velocity_commanded _joint_velocity_measured _joint_effort_measured _joint_effort_commanded _joint_effort_error _joint_names ))

(defmethod pr2_mechanism_controllers::BaseControllerState2
  (:init
   (&key
    ((:command __command) (instance geometry_msgs::Twist :init))
    ((:joint_command __joint_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_error __joint_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_velocity_commanded __joint_velocity_commanded) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_velocity_measured __joint_velocity_measured) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_effort_measured __joint_effort_measured) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_effort_commanded __joint_effort_commanded) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_effort_error __joint_effort_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _command __command)
   (setq _joint_command __joint_command)
   (setq _joint_error __joint_error)
   (setq _joint_velocity_commanded __joint_velocity_commanded)
   (setq _joint_velocity_measured __joint_velocity_measured)
   (setq _joint_effort_measured __joint_effort_measured)
   (setq _joint_effort_commanded __joint_effort_commanded)
   (setq _joint_effort_error __joint_effort_error)
   (setq _joint_names __joint_names)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:joint_command
   (&optional __joint_command)
   (if __joint_command (setq _joint_command __joint_command)) _joint_command)
  (:joint_error
   (&optional __joint_error)
   (if __joint_error (setq _joint_error __joint_error)) _joint_error)
  (:joint_velocity_commanded
   (&optional __joint_velocity_commanded)
   (if __joint_velocity_commanded (setq _joint_velocity_commanded __joint_velocity_commanded)) _joint_velocity_commanded)
  (:joint_velocity_measured
   (&optional __joint_velocity_measured)
   (if __joint_velocity_measured (setq _joint_velocity_measured __joint_velocity_measured)) _joint_velocity_measured)
  (:joint_effort_measured
   (&optional __joint_effort_measured)
   (if __joint_effort_measured (setq _joint_effort_measured __joint_effort_measured)) _joint_effort_measured)
  (:joint_effort_commanded
   (&optional __joint_effort_commanded)
   (if __joint_effort_commanded (setq _joint_effort_commanded __joint_effort_commanded)) _joint_effort_commanded)
  (:joint_effort_error
   (&optional __joint_effort_error)
   (if __joint_effort_error (setq _joint_effort_error __joint_effort_error)) _joint_effort_error)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _command
    (send _command :serialization-length)
    ;; float64[] _joint_command
    (* 8    (length _joint_command)) 4
    ;; float64[] _joint_error
    (* 8    (length _joint_error)) 4
    ;; float64[] _joint_velocity_commanded
    (* 8    (length _joint_velocity_commanded)) 4
    ;; float64[] _joint_velocity_measured
    (* 8    (length _joint_velocity_measured)) 4
    ;; float64[] _joint_effort_measured
    (* 8    (length _joint_effort_measured)) 4
    ;; float64[] _joint_effort_commanded
    (* 8    (length _joint_effort_commanded)) 4
    ;; float64[] _joint_effort_error
    (* 8    (length _joint_effort_error)) 4
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _command
       (send _command :serialize s)
     ;; float64[] _joint_command
     (write-long (length _joint_command) s)
     (dotimes (i (length _joint_command))
       (sys::poke (elt _joint_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_error
     (write-long (length _joint_error) s)
     (dotimes (i (length _joint_error))
       (sys::poke (elt _joint_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_velocity_commanded
     (write-long (length _joint_velocity_commanded) s)
     (dotimes (i (length _joint_velocity_commanded))
       (sys::poke (elt _joint_velocity_commanded i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_velocity_measured
     (write-long (length _joint_velocity_measured) s)
     (dotimes (i (length _joint_velocity_measured))
       (sys::poke (elt _joint_velocity_measured i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_effort_measured
     (write-long (length _joint_effort_measured) s)
     (dotimes (i (length _joint_effort_measured))
       (sys::poke (elt _joint_effort_measured i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_effort_commanded
     (write-long (length _joint_effort_commanded) s)
     (dotimes (i (length _joint_effort_commanded))
       (sys::poke (elt _joint_effort_commanded i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_effort_error
     (write-long (length _joint_effort_error) s)
     (dotimes (i (length _joint_effort_error))
       (sys::poke (elt _joint_effort_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; float64[] _joint_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_velocity_commanded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocity_commanded (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocity_commanded i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_velocity_measured
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocity_measured (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocity_measured i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_effort_measured
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_effort_measured (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_effort_measured i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_effort_commanded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_effort_commanded (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_effort_commanded i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_effort_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_effort_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_effort_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::BaseControllerState2 :md5sum-) "d4b64baf09d8cb133f3f2bc279de1137")
(setf (get pr2_mechanism_controllers::BaseControllerState2 :datatype-) "pr2_mechanism_controllers/BaseControllerState2")
(setf (get pr2_mechanism_controllers::BaseControllerState2 :definition-)
      "geometry_msgs/Twist command
float64[] joint_command
float64[] joint_error
float64[] joint_velocity_commanded
float64[] joint_velocity_measured
float64[] joint_effort_measured
float64[] joint_effort_commanded
float64[] joint_effort_error
string[] joint_names


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :pr2_mechanism_controllers/BaseControllerState2 "d4b64baf09d8cb133f3f2bc279de1137")


