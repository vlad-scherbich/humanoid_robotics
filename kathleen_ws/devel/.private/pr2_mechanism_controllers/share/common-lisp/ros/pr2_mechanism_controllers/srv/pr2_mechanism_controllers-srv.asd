
(cl:in-package :asdf)

(defsystem "pr2_mechanism_controllers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetProfile" :depends-on ("_package_SetProfile"))
    (:file "_package_SetProfile" :depends-on ("_package"))
  ))