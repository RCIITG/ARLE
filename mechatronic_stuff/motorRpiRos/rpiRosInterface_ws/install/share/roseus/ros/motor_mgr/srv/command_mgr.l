;; Auto-generated. Do not edit!


(when (boundp 'motor_mgr::command_mgr)
  (if (not (find-package "MOTOR_MGR"))
    (make-package "MOTOR_MGR"))
  (shadow 'command_mgr (find-package "MOTOR_MGR")))
(unless (find-package "MOTOR_MGR::COMMAND_MGR")
  (make-package "MOTOR_MGR::COMMAND_MGR"))
(unless (find-package "MOTOR_MGR::COMMAND_MGRREQUEST")
  (make-package "MOTOR_MGR::COMMAND_MGRREQUEST"))
(unless (find-package "MOTOR_MGR::COMMAND_MGRRESPONSE")
  (make-package "MOTOR_MGR::COMMAND_MGRRESPONSE"))

(in-package "ROS")





(defclass motor_mgr::command_mgrRequest
  :super ros::object
  :slots (_motor_id _command ))

(defmethod motor_mgr::command_mgrRequest
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:command __command) "")
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _command (string __command))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int32 _motor_id
    4
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor_id
       (write-long _motor_id s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor_id
     (setq _motor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass motor_mgr::command_mgrResponse
  :super ros::object
  :slots (_status ))

(defmethod motor_mgr::command_mgrResponse
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

(defclass motor_mgr::command_mgr
  :super ros::object
  :slots ())

(setf (get motor_mgr::command_mgr :md5sum-) "7eed62a0c6b4eeb8dcfecd34103839c4")
(setf (get motor_mgr::command_mgr :datatype-) "motor_mgr/command_mgr")
(setf (get motor_mgr::command_mgr :request) motor_mgr::command_mgrRequest)
(setf (get motor_mgr::command_mgr :response) motor_mgr::command_mgrResponse)

(defmethod motor_mgr::command_mgrRequest
  (:response () (instance motor_mgr::command_mgrResponse :init)))

(setf (get motor_mgr::command_mgrRequest :md5sum-) "7eed62a0c6b4eeb8dcfecd34103839c4")
(setf (get motor_mgr::command_mgrRequest :datatype-) "motor_mgr/command_mgrRequest")
(setf (get motor_mgr::command_mgrRequest :definition-)
      "int32 motor_id
string command
---
int32 status

")

(setf (get motor_mgr::command_mgrResponse :md5sum-) "7eed62a0c6b4eeb8dcfecd34103839c4")
(setf (get motor_mgr::command_mgrResponse :datatype-) "motor_mgr/command_mgrResponse")
(setf (get motor_mgr::command_mgrResponse :definition-)
      "int32 motor_id
string command
---
int32 status

")



(provide :motor_mgr/command_mgr "7eed62a0c6b4eeb8dcfecd34103839c4")


