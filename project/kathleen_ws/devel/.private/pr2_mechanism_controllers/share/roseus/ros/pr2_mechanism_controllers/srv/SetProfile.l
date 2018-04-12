;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::SetProfile)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'SetProfile (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::SETPROFILE")
  (make-package "PR2_MECHANISM_CONTROLLERS::SETPROFILE"))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::SETPROFILEREQUEST")
  (make-package "PR2_MECHANISM_CONTROLLERS::SETPROFILEREQUEST"))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::SETPROFILERESPONSE")
  (make-package "PR2_MECHANISM_CONTROLLERS::SETPROFILERESPONSE"))

(in-package "ROS")





(defclass pr2_mechanism_controllers::SetProfileRequest
  :super ros::object
  :slots (_UpperTurnaround _LowerTurnaround _upperDecelBuffer _lowerDecelBuffer _profile _period _amplitude _offset ))

(defmethod pr2_mechanism_controllers::SetProfileRequest
  (:init
   (&key
    ((:UpperTurnaround __UpperTurnaround) 0.0)
    ((:LowerTurnaround __LowerTurnaround) 0.0)
    ((:upperDecelBuffer __upperDecelBuffer) 0.0)
    ((:lowerDecelBuffer __lowerDecelBuffer) 0.0)
    ((:profile __profile) 0.0)
    ((:period __period) 0.0)
    ((:amplitude __amplitude) 0.0)
    ((:offset __offset) 0.0)
    )
   (send-super :init)
   (setq _UpperTurnaround (float __UpperTurnaround))
   (setq _LowerTurnaround (float __LowerTurnaround))
   (setq _upperDecelBuffer (float __upperDecelBuffer))
   (setq _lowerDecelBuffer (float __lowerDecelBuffer))
   (setq _profile (float __profile))
   (setq _period (float __period))
   (setq _amplitude (float __amplitude))
   (setq _offset (float __offset))
   self)
  (:UpperTurnaround
   (&optional __UpperTurnaround)
   (if __UpperTurnaround (setq _UpperTurnaround __UpperTurnaround)) _UpperTurnaround)
  (:LowerTurnaround
   (&optional __LowerTurnaround)
   (if __LowerTurnaround (setq _LowerTurnaround __LowerTurnaround)) _LowerTurnaround)
  (:upperDecelBuffer
   (&optional __upperDecelBuffer)
   (if __upperDecelBuffer (setq _upperDecelBuffer __upperDecelBuffer)) _upperDecelBuffer)
  (:lowerDecelBuffer
   (&optional __lowerDecelBuffer)
   (if __lowerDecelBuffer (setq _lowerDecelBuffer __lowerDecelBuffer)) _lowerDecelBuffer)
  (:profile
   (&optional __profile)
   (if __profile (setq _profile __profile)) _profile)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; float64 _UpperTurnaround
    8
    ;; float64 _LowerTurnaround
    8
    ;; float64 _upperDecelBuffer
    8
    ;; float64 _lowerDecelBuffer
    8
    ;; float64 _profile
    8
    ;; float64 _period
    8
    ;; float64 _amplitude
    8
    ;; float64 _offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _UpperTurnaround
       (sys::poke _UpperTurnaround (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LowerTurnaround
       (sys::poke _LowerTurnaround (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upperDecelBuffer
       (sys::poke _upperDecelBuffer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lowerDecelBuffer
       (sys::poke _lowerDecelBuffer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _profile
       (sys::poke _profile (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _period
       (sys::poke _period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _amplitude
       (sys::poke _amplitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _UpperTurnaround
     (setq _UpperTurnaround (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LowerTurnaround
     (setq _LowerTurnaround (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upperDecelBuffer
     (setq _upperDecelBuffer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lowerDecelBuffer
     (setq _lowerDecelBuffer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _profile
     (setq _profile (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _period
     (setq _period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _amplitude
     (setq _amplitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset
     (setq _offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pr2_mechanism_controllers::SetProfileResponse
  :super ros::object
  :slots (_time ))

(defmethod pr2_mechanism_controllers::SetProfileResponse
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pr2_mechanism_controllers::SetProfile
  :super ros::object
  :slots ())

(setf (get pr2_mechanism_controllers::SetProfile :md5sum-) "2c429583cad60964651aba828d788a9a")
(setf (get pr2_mechanism_controllers::SetProfile :datatype-) "pr2_mechanism_controllers/SetProfile")
(setf (get pr2_mechanism_controllers::SetProfile :request) pr2_mechanism_controllers::SetProfileRequest)
(setf (get pr2_mechanism_controllers::SetProfile :response) pr2_mechanism_controllers::SetProfileResponse)

(defmethod pr2_mechanism_controllers::SetProfileRequest
  (:response () (instance pr2_mechanism_controllers::SetProfileResponse :init)))

(setf (get pr2_mechanism_controllers::SetProfileRequest :md5sum-) "2c429583cad60964651aba828d788a9a")
(setf (get pr2_mechanism_controllers::SetProfileRequest :datatype-) "pr2_mechanism_controllers/SetProfileRequest")
(setf (get pr2_mechanism_controllers::SetProfileRequest :definition-)
      "float64 UpperTurnaround
float64 LowerTurnaround
float64 upperDecelBuffer
float64 lowerDecelBuffer
float64 profile
float64 period
float64 amplitude
float64 offset
---
float64 time


")

(setf (get pr2_mechanism_controllers::SetProfileResponse :md5sum-) "2c429583cad60964651aba828d788a9a")
(setf (get pr2_mechanism_controllers::SetProfileResponse :datatype-) "pr2_mechanism_controllers/SetProfileResponse")
(setf (get pr2_mechanism_controllers::SetProfileResponse :definition-)
      "float64 UpperTurnaround
float64 LowerTurnaround
float64 upperDecelBuffer
float64 lowerDecelBuffer
float64 profile
float64 period
float64 amplitude
float64 offset
---
float64 time


")



(provide :pr2_mechanism_controllers/SetProfile "2c429583cad60964651aba828d788a9a")


