;; Auto-generated. Do not edit!


(when (boundp 'robot_controllers_msgs::ControllerState)
  (if (not (find-package "ROBOT_CONTROLLERS_MSGS"))
    (make-package "ROBOT_CONTROLLERS_MSGS"))
  (shadow 'ControllerState (find-package "ROBOT_CONTROLLERS_MSGS")))
(unless (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE")
  (make-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html


(intern "*STOPPED*" (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(shadow '*STOPPED* (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(defconstant robot_controllers_msgs::ControllerState::*STOPPED* 0)
(intern "*RUNNING*" (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(shadow '*RUNNING* (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(defconstant robot_controllers_msgs::ControllerState::*RUNNING* 1)
(intern "*ERROR*" (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(shadow '*ERROR* (find-package "ROBOT_CONTROLLERS_MSGS::CONTROLLERSTATE"))
(defconstant robot_controllers_msgs::ControllerState::*ERROR* 2)
(defclass robot_controllers_msgs::ControllerState
  :super ros::object
  :slots (_name _type _state ))

(defmethod robot_controllers_msgs::ControllerState
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _state (round __state))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_controllers_msgs::ControllerState :md5sum-) "af57e70ba1ab402f75604e58ad260b8f")
(setf (get robot_controllers_msgs::ControllerState :datatype-) "robot_controllers_msgs/ControllerState")
(setf (get robot_controllers_msgs::ControllerState :definition-)
      "# Valid states:

uint8 STOPPED = 0
uint8 RUNNING = 1
uint8 ERROR = 2

string name
string type
uint8 state

")



(provide :robot_controllers_msgs/ControllerState "af57e70ba1ab402f75604e58ad260b8f")


