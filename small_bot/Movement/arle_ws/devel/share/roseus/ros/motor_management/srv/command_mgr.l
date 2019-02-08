;; Auto-generated. Do not edit!


(when (boundp 'motor_management::command_mgr)
  (if (not (find-package "MOTOR_MANAGEMENT"))
    (make-package "MOTOR_MANAGEMENT"))
  (shadow 'command_mgr (find-package "MOTOR_MANAGEMENT")))
(unless (find-package "MOTOR_MANAGEMENT::COMMAND_MGR")
  (make-package "MOTOR_MANAGEMENT::COMMAND_MGR"))
(unless (find-package "MOTOR_MANAGEMENT::COMMAND_MGRREQUEST")
  (make-package "MOTOR_MANAGEMENT::COMMAND_MGRREQUEST"))
(unless (find-package "MOTOR_MANAGEMENT::COMMAND_MGRRESPONSE")
  (make-package "MOTOR_MANAGEMENT::COMMAND_MGRRESPONSE"))

(in-package "ROS")





(defclass motor_management::command_mgrRequest
  :super ros::object
  :slots (_command ))

(defmethod motor_management::command_mgrRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass motor_management::command_mgrResponse
  :super ros::object
  :slots (_status ))

(defmethod motor_management::command_mgrResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass motor_management::command_mgr
  :super ros::object
  :slots ())

(setf (get motor_management::command_mgr :md5sum-) "ea9b8ec83958423851a8ad68108ef421")
(setf (get motor_management::command_mgr :datatype-) "motor_management/command_mgr")
(setf (get motor_management::command_mgr :request) motor_management::command_mgrRequest)
(setf (get motor_management::command_mgr :response) motor_management::command_mgrResponse)

(defmethod motor_management::command_mgrRequest
  (:response () (instance motor_management::command_mgrResponse :init)))

(setf (get motor_management::command_mgrRequest :md5sum-) "ea9b8ec83958423851a8ad68108ef421")
(setf (get motor_management::command_mgrRequest :datatype-) "motor_management/command_mgrRequest")
(setf (get motor_management::command_mgrRequest :definition-)
      "string command
---
int32 status

")

(setf (get motor_management::command_mgrResponse :md5sum-) "ea9b8ec83958423851a8ad68108ef421")
(setf (get motor_management::command_mgrResponse :datatype-) "motor_management/command_mgrResponse")
(setf (get motor_management::command_mgrResponse :definition-)
      "string command
---
int32 status

")



(provide :motor_management/command_mgr "ea9b8ec83958423851a8ad68108ef421")


