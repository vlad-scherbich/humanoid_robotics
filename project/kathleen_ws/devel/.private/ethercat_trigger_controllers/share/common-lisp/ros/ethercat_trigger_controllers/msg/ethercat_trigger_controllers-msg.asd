
(cl:in-package :asdf)

(defsystem "ethercat_trigger_controllers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MultiWaveform" :depends-on ("_package_MultiWaveform"))
    (:file "_package_MultiWaveform" :depends-on ("_package"))
    (:file "MultiWaveformTransition" :depends-on ("_package_MultiWaveformTransition"))
    (:file "_package_MultiWaveformTransition" :depends-on ("_package"))
  ))