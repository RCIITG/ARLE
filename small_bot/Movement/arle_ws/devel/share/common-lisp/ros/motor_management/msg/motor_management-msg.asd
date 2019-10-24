
(cl:in-package :asdf)

(defsystem "motor_management-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "comm" :depends-on ("_package_comm"))
    (:file "_package_comm" :depends-on ("_package"))
  ))