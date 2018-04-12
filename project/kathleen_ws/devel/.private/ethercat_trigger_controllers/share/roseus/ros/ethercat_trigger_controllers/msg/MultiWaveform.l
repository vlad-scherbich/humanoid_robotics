;; Auto-generated. Do not edit!


(when (boundp 'ethercat_trigger_controllers::MultiWaveform)
  (if (not (find-package "ETHERCAT_TRIGGER_CONTROLLERS"))
    (make-package "ETHERCAT_TRIGGER_CONTROLLERS"))
  (shadow 'MultiWaveform (find-package "ETHERCAT_TRIGGER_CONTROLLERS")))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::MULTIWAVEFORM")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::MULTIWAVEFORM"))

(in-package "ROS")
;;//! \htmlinclude MultiWaveform.msg.html


(defclass ethercat_trigger_controllers::MultiWaveform
  :super ros::object
  :slots (_period _zero_offset _transitions ))

(defmethod ethercat_trigger_controllers::MultiWaveform
  (:init
   (&key
    ((:period __period) 0.0)
    ((:zero_offset __zero_offset) 0.0)
    ((:transitions __transitions) (let (r) (dotimes (i 0) (push (instance ethercat_trigger_controllers::MultiWaveformTransition :init) r)) r))
    )
   (send-super :init)
   (setq _period (float __period))
   (setq _zero_offset (float __zero_offset))
   (setq _transitions __transitions)
   self)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:zero_offset
   (&optional __zero_offset)
   (if __zero_offset (setq _zero_offset __zero_offset)) _zero_offset)
  (:transitions
   (&rest __transitions)
   (if (keywordp (car __transitions))
       (send* _transitions __transitions)
     (progn
       (if __transitions (setq _transitions (car __transitions)))
       _transitions)))
  (:serialization-length
   ()
   (+
    ;; float64 _period
    8
    ;; float64 _zero_offset
    8
    ;; ethercat_trigger_controllers/MultiWaveformTransition[] _transitions
    (apply #'+ (send-all _transitions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _period
       (sys::poke _period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zero_offset
       (sys::poke _zero_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ethercat_trigger_controllers/MultiWaveformTransition[] _transitions
     (write-long (length _transitions) s)
     (dolist (elem _transitions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _period
     (setq _period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zero_offset
     (setq _zero_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ethercat_trigger_controllers/MultiWaveformTransition[] _transitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transitions (let (r) (dotimes (i n) (push (instance ethercat_trigger_controllers::MultiWaveformTransition :init) r)) r))
     (dolist (elem- _transitions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ethercat_trigger_controllers::MultiWaveform :md5sum-) "6a8e166563c159e73f391a302e7b37f6")
(setf (get ethercat_trigger_controllers::MultiWaveform :datatype-) "ethercat_trigger_controllers/MultiWaveform")
(setf (get ethercat_trigger_controllers::MultiWaveform :definition-)
      "# Transitions will occur at k * period + zero_offset + transitions[j].time, where j and
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

")



(provide :ethercat_trigger_controllers/MultiWaveform "6a8e166563c159e73f391a302e7b37f6")


