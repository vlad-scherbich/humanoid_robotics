;; Auto-generated. Do not edit!


(when (boundp 'ethercat_trigger_controllers::MultiWaveformTransition)
  (if (not (find-package "ETHERCAT_TRIGGER_CONTROLLERS"))
    (make-package "ETHERCAT_TRIGGER_CONTROLLERS"))
  (shadow 'MultiWaveformTransition (find-package "ETHERCAT_TRIGGER_CONTROLLERS")))
(unless (find-package "ETHERCAT_TRIGGER_CONTROLLERS::MULTIWAVEFORMTRANSITION")
  (make-package "ETHERCAT_TRIGGER_CONTROLLERS::MULTIWAVEFORMTRANSITION"))

(in-package "ROS")
;;//! \htmlinclude MultiWaveformTransition.msg.html


(defclass ethercat_trigger_controllers::MultiWaveformTransition
  :super ros::object
  :slots (_time _value _topic ))

(defmethod ethercat_trigger_controllers::MultiWaveformTransition
  (:init
   (&key
    ((:time __time) 0.0)
    ((:value __value) 0)
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _value (round __value))
   (setq _topic (string __topic))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; uint32 _value
    4
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _value
       (write-long _value s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ethercat_trigger_controllers::MultiWaveformTransition :md5sum-) "bdd47e5d1c3d77473af2df9833a0608a")
(setf (get ethercat_trigger_controllers::MultiWaveformTransition :datatype-) "ethercat_trigger_controllers/MultiWaveformTransition")
(setf (get ethercat_trigger_controllers::MultiWaveformTransition :definition-)
      "# Used to specify a transition in the SetMultiWaveform service.

float64 time # Transition time after start of period.
uint32 value # Value of the digital output after the transition time.
string topic # Topic to publish the transition timestamp to, or empty string if the transition should not be published.

")



(provide :ethercat_trigger_controllers/MultiWaveformTransition "bdd47e5d1c3d77473af2df9833a0608a")


