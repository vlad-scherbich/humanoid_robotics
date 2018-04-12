;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_controllers::OdometryMatrix)
  (if (not (find-package "PR2_MECHANISM_CONTROLLERS"))
    (make-package "PR2_MECHANISM_CONTROLLERS"))
  (shadow 'OdometryMatrix (find-package "PR2_MECHANISM_CONTROLLERS")))
(unless (find-package "PR2_MECHANISM_CONTROLLERS::ODOMETRYMATRIX")
  (make-package "PR2_MECHANISM_CONTROLLERS::ODOMETRYMATRIX"))

(in-package "ROS")
;;//! \htmlinclude OdometryMatrix.msg.html


(defclass pr2_mechanism_controllers::OdometryMatrix
  :super ros::object
  :slots (_m ))

(defmethod pr2_mechanism_controllers::OdometryMatrix
  (:init
   (&key
    ((:m __m) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _m __m)
   self)
  (:m
   (&optional __m)
   (if __m (setq _m __m)) _m)
  (:serialization-length
   ()
   (+
    ;; float64[] _m
    (* 8    (length _m)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _m
     (write-long (length _m) s)
     (dotimes (i (length _m))
       (sys::poke (elt _m i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _m i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pr2_mechanism_controllers::OdometryMatrix :md5sum-) "1f7818e7ce16454badf1bee936b0ff16")
(setf (get pr2_mechanism_controllers::OdometryMatrix :datatype-) "pr2_mechanism_controllers/OdometryMatrix")
(setf (get pr2_mechanism_controllers::OdometryMatrix :definition-)
      "float64[] m
")



(provide :pr2_mechanism_controllers/OdometryMatrix "1f7818e7ce16454badf1bee936b0ff16")


