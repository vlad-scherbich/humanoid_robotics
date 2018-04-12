;; Auto-generated. Do not edit!


(when (boundp 'pr2_controllers_msgs::QueryCalibrationState)
  (if (not (find-package "PR2_CONTROLLERS_MSGS"))
    (make-package "PR2_CONTROLLERS_MSGS"))
  (shadow 'QueryCalibrationState (find-package "PR2_CONTROLLERS_MSGS")))
(unless (find-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATE")
  (make-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATE"))
(unless (find-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATEREQUEST")
  (make-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATEREQUEST"))
(unless (find-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATERESPONSE")
  (make-package "PR2_CONTROLLERS_MSGS::QUERYCALIBRATIONSTATERESPONSE"))

(in-package "ROS")





(defclass pr2_controllers_msgs::QueryCalibrationStateRequest
  :super ros::object
  :slots ())

(defmethod pr2_controllers_msgs::QueryCalibrationStateRequest
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

(defclass pr2_controllers_msgs::QueryCalibrationStateResponse
  :super ros::object
  :slots (_is_calibrated ))

(defmethod pr2_controllers_msgs::QueryCalibrationStateResponse
  (:init
   (&key
    ((:is_calibrated __is_calibrated) nil)
    )
   (send-super :init)
   (setq _is_calibrated __is_calibrated)
   self)
  (:is_calibrated
   (&optional __is_calibrated)
   (if __is_calibrated (setq _is_calibrated __is_calibrated)) _is_calibrated)
  (:serialization-length
   ()
   (+
    ;; bool _is_calibrated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_calibrated
       (if _is_calibrated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_calibrated
     (setq _is_calibrated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pr2_controllers_msgs::QueryCalibrationState
  :super ros::object
  :slots ())

(setf (get pr2_controllers_msgs::QueryCalibrationState :md5sum-) "28af3beedcb84986b8e470dc5470507d")
(setf (get pr2_controllers_msgs::QueryCalibrationState :datatype-) "pr2_controllers_msgs/QueryCalibrationState")
(setf (get pr2_controllers_msgs::QueryCalibrationState :request) pr2_controllers_msgs::QueryCalibrationStateRequest)
(setf (get pr2_controllers_msgs::QueryCalibrationState :response) pr2_controllers_msgs::QueryCalibrationStateResponse)

(defmethod pr2_controllers_msgs::QueryCalibrationStateRequest
  (:response () (instance pr2_controllers_msgs::QueryCalibrationStateResponse :init)))

(setf (get pr2_controllers_msgs::QueryCalibrationStateRequest :md5sum-) "28af3beedcb84986b8e470dc5470507d")
(setf (get pr2_controllers_msgs::QueryCalibrationStateRequest :datatype-) "pr2_controllers_msgs/QueryCalibrationStateRequest")
(setf (get pr2_controllers_msgs::QueryCalibrationStateRequest :definition-)
      "---
bool is_calibrated
")

(setf (get pr2_controllers_msgs::QueryCalibrationStateResponse :md5sum-) "28af3beedcb84986b8e470dc5470507d")
(setf (get pr2_controllers_msgs::QueryCalibrationStateResponse :datatype-) "pr2_controllers_msgs/QueryCalibrationStateResponse")
(setf (get pr2_controllers_msgs::QueryCalibrationStateResponse :definition-)
      "---
bool is_calibrated
")



(provide :pr2_controllers_msgs/QueryCalibrationState "28af3beedcb84986b8e470dc5470507d")


