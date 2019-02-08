;; Auto-generated. Do not edit!


(when (boundp 'motor_management::comm)
  (if (not (find-package "MOTOR_MANAGEMENT"))
    (make-package "MOTOR_MANAGEMENT"))
  (shadow 'comm (find-package "MOTOR_MANAGEMENT")))
(unless (find-package "MOTOR_MANAGEMENT::COMM")
  (make-package "MOTOR_MANAGEMENT::COMM"))

(in-package "ROS")
;;//! \htmlinclude comm.msg.html


(defclass motor_management::comm
  :super ros::object
  :slots (_motor_id ))

(defmethod motor_management::comm
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:serialization-length
   ()
   (+
    ;; int32 _motor_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor_id
       (write-long _motor_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor_id
     (setq _motor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motor_management::comm :md5sum-) "a48abd1466f0e00748fbd1115ea80036")
(setf (get motor_management::comm :datatype-) "motor_management/comm")
(setf (get motor_management::comm :definition-)
      "int32 motor_id


")



(provide :motor_management/comm "a48abd1466f0e00748fbd1115ea80036")


