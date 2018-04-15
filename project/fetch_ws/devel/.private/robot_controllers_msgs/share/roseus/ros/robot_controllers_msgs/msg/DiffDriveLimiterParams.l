;; Auto-generated. Do not edit!


(when (boundp 'robot_controllers_msgs::DiffDriveLimiterParams)
  (if (not (find-package "ROBOT_CONTROLLERS_MSGS"))
    (make-package "ROBOT_CONTROLLERS_MSGS"))
  (shadow 'DiffDriveLimiterParams (find-package "ROBOT_CONTROLLERS_MSGS")))
(unless (find-package "ROBOT_CONTROLLERS_MSGS::DIFFDRIVELIMITERPARAMS")
  (make-package "ROBOT_CONTROLLERS_MSGS::DIFFDRIVELIMITERPARAMS"))

(in-package "ROS")
;;//! \htmlinclude DiffDriveLimiterParams.msg.html


(defclass robot_controllers_msgs::DiffDriveLimiterParams
  :super ros::object
  :slots (_max_linear_velocity _max_linear_acceleration _max_angular_velocity _max_angular_acceleration _max_wheel_velocity _track_width _angular_velocity_limits_linear_velocity _scale_to_wheel_velocity_limits ))

(defmethod robot_controllers_msgs::DiffDriveLimiterParams
  (:init
   (&key
    ((:max_linear_velocity __max_linear_velocity) 0.0)
    ((:max_linear_acceleration __max_linear_acceleration) 0.0)
    ((:max_angular_velocity __max_angular_velocity) 0.0)
    ((:max_angular_acceleration __max_angular_acceleration) 0.0)
    ((:max_wheel_velocity __max_wheel_velocity) 0.0)
    ((:track_width __track_width) 0.0)
    ((:angular_velocity_limits_linear_velocity __angular_velocity_limits_linear_velocity) nil)
    ((:scale_to_wheel_velocity_limits __scale_to_wheel_velocity_limits) nil)
    )
   (send-super :init)
   (setq _max_linear_velocity (float __max_linear_velocity))
   (setq _max_linear_acceleration (float __max_linear_acceleration))
   (setq _max_angular_velocity (float __max_angular_velocity))
   (setq _max_angular_acceleration (float __max_angular_acceleration))
   (setq _max_wheel_velocity (float __max_wheel_velocity))
   (setq _track_width (float __track_width))
   (setq _angular_velocity_limits_linear_velocity __angular_velocity_limits_linear_velocity)
   (setq _scale_to_wheel_velocity_limits __scale_to_wheel_velocity_limits)
   self)
  (:max_linear_velocity
   (&optional __max_linear_velocity)
   (if __max_linear_velocity (setq _max_linear_velocity __max_linear_velocity)) _max_linear_velocity)
  (:max_linear_acceleration
   (&optional __max_linear_acceleration)
   (if __max_linear_acceleration (setq _max_linear_acceleration __max_linear_acceleration)) _max_linear_acceleration)
  (:max_angular_velocity
   (&optional __max_angular_velocity)
   (if __max_angular_velocity (setq _max_angular_velocity __max_angular_velocity)) _max_angular_velocity)
  (:max_angular_acceleration
   (&optional __max_angular_acceleration)
   (if __max_angular_acceleration (setq _max_angular_acceleration __max_angular_acceleration)) _max_angular_acceleration)
  (:max_wheel_velocity
   (&optional __max_wheel_velocity)
   (if __max_wheel_velocity (setq _max_wheel_velocity __max_wheel_velocity)) _max_wheel_velocity)
  (:track_width
   (&optional __track_width)
   (if __track_width (setq _track_width __track_width)) _track_width)
  (:angular_velocity_limits_linear_velocity
   (&optional __angular_velocity_limits_linear_velocity)
   (if __angular_velocity_limits_linear_velocity (setq _angular_velocity_limits_linear_velocity __angular_velocity_limits_linear_velocity)) _angular_velocity_limits_linear_velocity)
  (:scale_to_wheel_velocity_limits
   (&optional __scale_to_wheel_velocity_limits)
   (if __scale_to_wheel_velocity_limits (setq _scale_to_wheel_velocity_limits __scale_to_wheel_velocity_limits)) _scale_to_wheel_velocity_limits)
  (:serialization-length
   ()
   (+
    ;; float64 _max_linear_velocity
    8
    ;; float64 _max_linear_acceleration
    8
    ;; float64 _max_angular_velocity
    8
    ;; float64 _max_angular_acceleration
    8
    ;; float64 _max_wheel_velocity
    8
    ;; float64 _track_width
    8
    ;; bool _angular_velocity_limits_linear_velocity
    1
    ;; bool _scale_to_wheel_velocity_limits
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _max_linear_velocity
       (sys::poke _max_linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear_acceleration
       (sys::poke _max_linear_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_angular_velocity
       (sys::poke _max_angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_angular_acceleration
       (sys::poke _max_angular_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_wheel_velocity
       (sys::poke _max_wheel_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track_width
       (sys::poke _track_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _angular_velocity_limits_linear_velocity
       (if _angular_velocity_limits_linear_velocity (write-byte -1 s) (write-byte 0 s))
     ;; bool _scale_to_wheel_velocity_limits
       (if _scale_to_wheel_velocity_limits (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _max_linear_velocity
     (setq _max_linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear_acceleration
     (setq _max_linear_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_angular_velocity
     (setq _max_angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_angular_acceleration
     (setq _max_angular_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_wheel_velocity
     (setq _max_wheel_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track_width
     (setq _track_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _angular_velocity_limits_linear_velocity
     (setq _angular_velocity_limits_linear_velocity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _scale_to_wheel_velocity_limits
     (setq _scale_to_wheel_velocity_limits (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_controllers_msgs::DiffDriveLimiterParams :md5sum-) "c438ebbdf2d3d45fdfb67f5ba9e6ca3d")
(setf (get robot_controllers_msgs::DiffDriveLimiterParams :datatype-) "robot_controllers_msgs/DiffDriveLimiterParams")
(setf (get robot_controllers_msgs::DiffDriveLimiterParams :definition-)
      "# Various parameters for diff driver base velocity and acceleration limiter
# This message allows limits that would imposed by diff_drive_base
# to be understood by other components without needing access to 
# same set of rosparams, or URDF settings

float64 max_linear_velocity
float64 max_linear_acceleration

float64 max_angular_velocity
float64 max_angular_acceleration

# Wheel velocity limit are linear velocity (m/s) not angular velocities (rad/s)
float64 max_wheel_velocity

# distance between two wheels 
# used for calculating wheel velocities from angular velocity
float64 track_width

# If true limiter will reduce linear velocity
# when angular velocity is beyond limit so
# so path curvature is maintained
bool angular_velocity_limits_linear_velocity

# If true, linear and angular velocities will 
# scaled if wheel velocities beyond limits
# so path curvature is maintained
# otherwise wheel velocities are limited independently
bool scale_to_wheel_velocity_limits

")



(provide :robot_controllers_msgs/DiffDriveLimiterParams "c438ebbdf2d3d45fdfb67f5ba9e6ca3d")


