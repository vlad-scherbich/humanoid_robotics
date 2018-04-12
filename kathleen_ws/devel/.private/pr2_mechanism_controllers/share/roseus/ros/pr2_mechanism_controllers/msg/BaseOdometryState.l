;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::BaseOdometryState)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'BaseOdometryState (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::BASEODOMETRYSTATE")
  (make-package "PR2_MECHANISM_CONTROLLERS::BASEODOMETRYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BaseOdometryState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pr2_mechanism_controllers::BaseOdometryState
  :super ros::object
  :slots (_velocity _wheel_link_names _drive_constraint_errors _longitudinal_slip_constraint_errors ))

(defmethod pr2_mechanism_controllers::BaseOdometryState
  (:init
   (&key
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:wheel_link_names __wheel_link_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:drive_constraint_errors __drive_constraint_errors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:longitudinal_slip_constraint_errors __longitudinal_slip_constraint_errors) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _wheel_link_names __wheel_link_names)
   (setq _drive_constraint_errors __drive_constraint_errors)
   (setq _longitudinal_slip_constraint_errors __longitudinal_slip_constraint_errors)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:wheel_link_names
   (&optional __wheel_link_names)
   (if __wheel_link_names (setq _wheel_link_names __wheel_link_names)) _wheel_link_names)
  (:drive_constraint_errors
   (&optional __drive_constraint_errors)
   (if __drive_constraint_errors (setq _drive_constraint_errors __drive_constraint_errors)) _drive_constraint_errors)
  (:longitudinal_slip_constraint_errors
   (&optional __longitudinal_slip_constraint_errors)
   (if __longitudinal_slip_constraint_errors (setq _longitudinal_slip_constraint_errors __longitudinal_slip_constraint_errors)) _longitudinal_slip_constraint_errors)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; string[] _wheel_link_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wheel_link_names)) 4
    ;; float64[] _drive_constraint_errors
    (* 8    (length _drive_constraint_errors)) 4
    ;; float64[] _longitudinal_slip_constraint_errors
    (* 8    (length _longitudinal_slip_constraint_errors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; string[] _wheel_link_names
     (write-long (length _wheel_link_names) s)
     (dolist (elem _wheel_link_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _drive_constraint_errors
     (write-long (length _drive_constraint_errors) s)
     (dotimes (i (length _drive_constraint_errors))
       (sys::poke (elt _drive_constraint_errors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _longitudinal_slip_constraint_errors
     (write-long (length _longitudinal_slip_constraint_errors) s)
     (dotimes (i (length _longitudinal_slip_constraint_errors))
       (sys::poke (elt _longitudinal_slip_constraint_errors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; string[] _wheel_link_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_link_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _wheel_link_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _drive_constraint_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drive_constraint_errors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _drive_constraint_errors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _longitudinal_slip_constraint_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _longitudinal_slip_constraint_errors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _longitudinal_slip_constraint_errors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::BaseOdometryState :md5sum-) "8a483e137ebc37abafa4c26549091dd6")
(setf (get pr2_mechanism_controllers::BaseOdometryState :datatype-) "pr2_mechanism_controllers/BaseOdometryState")
(setf (get pr2_mechanism_controllers::BaseOdometryState :definition-)
      "geometry_msgs/Twist velocity
string[] wheel_link_names
float64[] drive_constraint_errors
float64[] longitudinal_slip_constraint_errors
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



(provide :pr2_mechanism_controllers/BaseOdometryState "8a483e137ebc37abafa4c26549091dd6")


