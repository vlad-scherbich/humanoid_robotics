
(cl:in-package :asdf)

(defsystem "ethercat_trigger_controllers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ethercat_trigger_controllers-msg
)
  :components ((:file "_package")
    (:file "SetMultiWaveform" :depends-on ("_package_SetMultiWaveform"))
    (:file "_package_SetMultiWaveform" :depends-on ("_package"))
    (:file "SetWaveform" :depends-on ("_package_SetWaveform"))
    (:file "_package_SetWaveform" :depends-on ("_package"))
  ))