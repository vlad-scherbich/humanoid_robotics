;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::DebugInfo)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'DebugInfo (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::DEBUGINFO")
  (make-package "PR2_MECHANISM_CONTROLLERS::DEBUGINFO"))

(in-package "ROS")
;;//! \htmlinclude DebugInfo.msg.html


(defclass pr2_mechanism_controllers::DebugInfo
  :super ros::object
  :slots (_timing _sequence _input_valid _residual ))

(defmethod pr2_mechanism_controllers::DebugInfo
  (:init
   (&key
    ((:timing __timing) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sequence __sequence) 0)
    ((:input_valid __input_valid) nil)
    ((:residual __residual) 0.0)
    )
   (send-super :init)
   (setq _timing __timing)
   (setq _sequence (round __sequence))
   (setq _input_valid __input_valid)
   (setq _residual (float __residual))
   self)
  (:timing
   (&optional __timing)
   (if __timing (setq _timing __timing)) _timing)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:input_valid
   (&optional __input_valid)
   (if __input_valid (setq _input_valid __input_valid)) _input_valid)
  (:residual
   (&optional __residual)
   (if __residual (setq _residual __residual)) _residual)
  (:serialization-length
   ()
   (+
    ;; float64[] _timing
    (* 8    (length _timing)) 4
    ;; int32 _sequence
    4
    ;; bool _input_valid
    1
    ;; float64 _residual
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _timing
     (write-long (length _timing) s)
     (dotimes (i (length _timing))
       (sys::poke (elt _timing i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _sequence
       (write-long _sequence s)
     ;; bool _input_valid
       (if _input_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _residual
       (sys::poke _residual (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _timing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timing (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timing i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _sequence
     (setq _sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _input_valid
     (setq _input_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _residual
     (setq _residual (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::DebugInfo :md5sum-) "6281356ce897e33da024b8eb319460f2")
(setf (get pr2_mechanism_controllers::DebugInfo :datatype-) "pr2_mechanism_controllers/DebugInfo")
(setf (get pr2_mechanism_controllers::DebugInfo :definition-)
      "float64[] timing
int32 sequence
bool input_valid
float64 residual
")



(provide :pr2_mechanism_controllers/DebugInfo "6281356ce897e33da024b8eb319460f2")


