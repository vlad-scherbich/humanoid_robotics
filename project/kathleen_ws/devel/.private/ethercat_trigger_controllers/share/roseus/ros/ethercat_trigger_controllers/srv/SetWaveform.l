;; Auto-generated. Do not edit!


(when (boundp 'ethercat_trigger_controllers::SetWaveform)
  (if (not (find-package "ETHERCAT_TRIGGER_CONTROLLERS"))
    (make-package "ETHERCAT_TRIGGER_CONTROLLERS"))
  (shadow 'SetWaveform (find-package "ETHERCAT_TRIGGER_CONTROLLERS")))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORM")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORM"))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORMREQUEST")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORMREQUEST"))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORMRESPONSE")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETWAVEFORMRESPONSE"))

(in-package "ROS")





(defclass ethercat_trigger_controllers::SetWaveformRequest
  :super ros::object
  :slots (_rep_rate _phase _duty_cycle _running _active_low _pulsed ))

(defmethod ethercat_trigger_controllers::SetWaveformRequest
  (:init
   (&key
    ((:rep_rate __rep_rate) 0.0)
    ((:phase __phase) 0.0)
    ((:duty_cycle __duty_cycle) 0.0)
    ((:running __running) 0)
    ((:active_low __active_low) 0)
    ((:pulsed __pulsed) 0)
    )
   (send-super :init)
   (setq _rep_rate (float __rep_rate))
   (setq _phase (float __phase))
   (setq _duty_cycle (float __duty_cycle))
   (setq _running (round __running))
   (setq _active_low (round __active_low))
   (setq _pulsed (round __pulsed))
   self)
  (:rep_rate
   (&optional __rep_rate)
   (if __rep_rate (setq _rep_rate __rep_rate)) _rep_rate)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:duty_cycle
   (&optional __duty_cycle)
   (if __duty_cycle (setq _duty_cycle __duty_cycle)) _duty_cycle)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:active_low
   (&optional __active_low)
   (if __active_low (setq _active_low __active_low)) _active_low)
  (:pulsed
   (&optional __pulsed)
   (if __pulsed (setq _pulsed __pulsed)) _pulsed)
  (:serialization-length
   ()
   (+
    ;; float64 _rep_rate
    8
    ;; float64 _phase
    8
    ;; float64 _duty_cycle
    8
    ;; int32 _running
    4
    ;; int32 _active_low
    4
    ;; int32 _pulsed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rep_rate
       (sys::poke _rep_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phase
       (sys::poke _phase (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duty_cycle
       (sys::poke _duty_cycle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _running
       (write-long _running s)
     ;; int32 _active_low
       (write-long _active_low s)
     ;; int32 _pulsed
       (write-long _pulsed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rep_rate
     (setq _rep_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phase
     (setq _phase (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duty_cycle
     (setq _duty_cycle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _running
     (setq _running (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _active_low
     (setq _active_low (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pulsed
     (setq _pulsed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ethercat_trigger_controllers::SetWaveformResponse
  :super ros::object
  :slots ())

(defmethod ethercat_trigger_controllers::SetWaveformResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ethercat_trigger_controllers::SetWaveform
  :super ros::object
  :slots ())

(setf (get ethercat_trigger_controllers::SetWaveform :md5sum-) "988450e1ddd386f3967c381c19b2330c")
(setf (get ethercat_trigger_controllers::SetWaveform :datatype-) "ethercat_trigger_controllers/SetWaveform")
(setf (get ethercat_trigger_controllers::SetWaveform :request) ethercat_trigger_controllers::SetWaveformRequest)
(setf (get ethercat_trigger_controllers::SetWaveform :response) ethercat_trigger_controllers::SetWaveformResponse)

(defmethod ethercat_trigger_controllers::SetWaveformRequest
  (:response () (instance ethercat_trigger_controllers::SetWaveformResponse :init)))

(setf (get ethercat_trigger_controllers::SetWaveformRequest :md5sum-) "988450e1ddd386f3967c381c19b2330c")
(setf (get ethercat_trigger_controllers::SetWaveformRequest :datatype-) "ethercat_trigger_controllers/SetWaveformRequest")
(setf (get ethercat_trigger_controllers::SetWaveformRequest :definition-)
      "float64 rep_rate
float64 phase
float64 duty_cycle
int32 running
int32 active_low
int32 pulsed
---

")

(setf (get ethercat_trigger_controllers::SetWaveformResponse :md5sum-) "988450e1ddd386f3967c381c19b2330c")
(setf (get ethercat_trigger_controllers::SetWaveformResponse :datatype-) "ethercat_trigger_controllers/SetWaveformResponse")
(setf (get ethercat_trigger_controllers::SetWaveformResponse :definition-)
      "float64 rep_rate
float64 phase
float64 duty_cycle
int32 running
int32 active_low
int32 pulsed
---

")



(provide :ethercat_trigger_controllers/SetWaveform "988450e1ddd386f3967c381c19b2330c")


