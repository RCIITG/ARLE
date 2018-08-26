
(cl:in-package :asdf)

(defsystem "motor_mgr-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "command_mgr" :depends-on ("_package_command_mgr"))
    (:file "_package_command_mgr" :depends-on ("_package"))
  ))