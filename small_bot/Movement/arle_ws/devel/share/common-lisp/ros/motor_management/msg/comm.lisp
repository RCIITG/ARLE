; Auto-generated. Do not edit!


(cl:in-package motor_management-msg)


;//! \htmlinclude comm.msg.html

(cl:defclass <comm> (roslisp-msg-protocol:ros-message)
  ((motor_id
    :reader motor_id
    :initarg :motor_id
    :type cl:integer
    :initform 0))
)

(cl:defclass comm (<comm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <comm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'comm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_management-msg:<comm> is deprecated: use motor_management-msg:comm instead.")))

(cl:ensure-generic-function 'motor_id-val :lambda-list '(m))
(cl:defmethod motor_id-val ((m <comm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_management-msg:motor_id-val is deprecated.  Use motor_management-msg:motor_id instead.")
  (motor_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <comm>) ostream)
  "Serializes a message object of type '<comm>"
  (cl:let* ((signed (cl:slot-value msg 'motor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <comm>) istream)
  "Deserializes a message object of type '<comm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<comm>)))
  "Returns string type for a message object of type '<comm>"
  "motor_management/comm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'comm)))
  "Returns string type for a message object of type 'comm"
  "motor_management/comm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<comm>)))
  "Returns md5sum for a message object of type '<comm>"
  "a48abd1466f0e00748fbd1115ea80036")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'comm)))
  "Returns md5sum for a message object of type 'comm"
  "a48abd1466f0e00748fbd1115ea80036")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<comm>)))
  "Returns full string definition for message of type '<comm>"
  (cl:format cl:nil "int32 motor_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'comm)))
  "Returns full string definition for message of type 'comm"
  (cl:format cl:nil "int32 motor_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <comm>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <comm>))
  "Converts a ROS message object to a list"
  (cl:list 'comm
    (cl:cons ':motor_id (motor_id msg))
))
