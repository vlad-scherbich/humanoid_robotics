;; Auto-generated. Do not edit!


(when (boundp 'ethercat_trigger_controllers::SetMultiWaveform)
  (if (not (find-package "ETHERCAT_TRIGGER_CONTROLLERS"))
    (make-package "ETHERCAT_TRIGGER_CONTROLLERS"))
  (shadow 'SetMultiWaveform (find-package "ETHERCAT_TRIGGER_CONTROLLERS")))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORM")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORM"))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORMREQUEST")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORMREQUEST"))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORMRESPONSE")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::SETMULTIWAVEFORMRESPONSE"))

(in-package "ROS")





(defclass ethercat_trigger_controllers::SetMultiWaveformRequest
  :super ros::object
  :slots (_waveform ))

(defmethod ethercat_trigger_controllers::SetMultiWaveformRequest
  (:init
   (&key
    ((:waveform __waveform) (instance ethercat_trigger_controllers::MultiWaveform :init))
    )
   (send-super :init)
   (setq _waveform __waveform)
   self)
  (:waveform
   (&rest __waveform)
   (if (keywordp (car __waveform))
       (send* _waveform __waveform)
     (progn
       (if __waveform (setq _waveform (car __waveform)))
       _waveform)))
  (:serialization-length
   ()
   (+
    ;; ethercat_trigger_controllers/MultiWaveform _waveform
    (send _waveform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ethercat_trigger_controllers/MultiWaveform _waveform
       (send _waveform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ethercat_trigger_controllers/MultiWaveform _waveform
     (send _waveform :deserialize buf ptr-) (incf ptr- (send _waveform :serialization-length))
   ;;
   self)
  )

(defclass ethercat_trigger_controllers::SetMultiWaveformResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod ethercat_trigger_controllers::SetMultiWaveformResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ethercat_trigger_controllers::SetMultiWaveform
  :super ros::object
  :slots ())

(setf (get ethercat_trigger_controllers::SetMultiWaveform :md5sum-) "cbb7e900a71a9a437da9999c8d39fff4")
(setf (get ethercat_trigger_controllers::SetMultiWaveform :datatype-) "ethercat_trigger_controllers/SetMultiWaveform")
(setf (get ethercat_trigger_controllers::SetMultiWaveform :request) ethercat_trigger_controllers::SetMultiWaveformRequest)
(setf (get ethercat_trigger_controllers::SetMultiWaveform :response) ethercat_trigger_controllers::SetMultiWaveformResponse)

(defmethod ethercat_trigger_controllers::SetMultiWaveformRequest
  (:response () (instance ethercat_trigger_controllers::SetMultiWaveformResponse :init)))

(setf (get ethercat_trigger_controllers::SetMultiWaveformRequest :md5sum-) "cbb7e900a71a9a437da9999c8d39fff4")
(setf (get ethercat_trigger_controllers::SetMultiWaveformRequest :datatype-) "ethercat_trigger_controllers/SetMultiWaveformRequest")
(setf (get ethercat_trigger_controllers::SetMultiWaveformRequest :definition-)
      "MultiWaveform waveform

================================================================================
MSG: ethercat_trigger_controllers/MultiWaveform
# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and
# k are integers.

float64 period # Period of the waveform in seconds.
float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds
MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)

================================================================================
MSG: ethercat_trigger_controllers/MultiWaveformTransition
# Used to specify a transition in the SetMultiWaveform service.

float64 time # Transition time after start of period.
uint32 value # Value of the digital output after the transition time.
string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.
---
bool success
string status_message

")

(setf (get ethercat_trigger_controllers::SetMultiWaveformResponse :md5sum-) "cbb7e900a71a9a437da9999c8d39fff4")
(setf (get ethercat_trigger_controllers::SetMultiWaveformResponse :datatype-) "ethercat_trigger_controllers/SetMultiWaveformResponse")
(setf (get ethercat_trigger_controllers::SetMultiWaveformResponse :definition-)
      "MultiWaveform waveform

================================================================================
MSG: ethercat_trigger_controllers/MultiWaveform
# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and
# k are integers.

float64 period # Period of the waveform in seconds.
float64 zero_offset # Time corresponding to a time of 0 in times[] in seconds
MultiWaveformTransition[] transitions # Transitions in the waveform. Transition times should be in increasing order, and be between 0 (inclusive) and period (exclusive)

================================================================================
MSG: ethercat_trigger_controllers/MultiWaveformTransition
# Used to specify a transition in the SetMultiWaveform service.

float64 time # Transition time after start of period.
uint32 value # Value of the digital output after the transition time.
string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.
---
bool success
string status_message

")



(provide :ethercat_trigger_controllers/SetMultiWaveform "cbb7e900a71a9a437da9999c8d39fff4")


