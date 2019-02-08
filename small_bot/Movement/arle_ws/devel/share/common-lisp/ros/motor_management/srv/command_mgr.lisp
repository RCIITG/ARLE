; Auto-generated. Do not edit!


(cl:in-package motor_management-srv)


;//! \htmlinclude command_mgr-request.msg.html

(cl:defclass <command_mgr-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass command_mgr-request (<command_mgr-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command_mgr-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command_mgr-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_management-srv:<command_mgr-request> is deprecated: use motor_management-srv:command_mgr-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <command_mgr-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_management-srv:command-val is deprecated.  Use motor_management-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command_mgr-request>) ostream)
  "Serializes a message object of type '<command_mgr-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command_mgr-request>) istream)
  "Deserializes a message object of type '<command_mgr-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command_mgr-request>)))
  "Returns string type for a service object of type '<command_mgr-request>"
  "motor_management/command_mgrRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_mgr-request)))
  "Returns string type for a service object of type 'command_mgr-request"
  "motor_management/command_mgrRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command_mgr-request>)))
  "Returns md5sum for a message object of type '<command_mgr-request>"
  "ea9b8ec83958423851a8ad68108ef421")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command_mgr-request)))
  "Returns md5sum for a message object of type 'command_mgr-request"
  "ea9b8ec83958423851a8ad68108ef421")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command_mgr-request>)))
  "Returns full string definition for message of type '<command_mgr-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command_mgr-request)))
  "Returns full string definition for message of type 'command_mgr-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command_mgr-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command_mgr-request>))
  "Converts a ROS message object to a list"
  (cl:list 'command_mgr-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude command_mgr-response.msg.html

(cl:defclass <command_mgr-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass command_mgr-response (<command_mgr-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command_mgr-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command_mgr-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_management-srv:<command_mgr-response> is deprecated: use motor_management-srv:command_mgr-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <command_mgr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_management-srv:status-val is deprecated.  Use motor_management-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command_mgr-response>) ostream)
  "Serializes a message object of type '<command_mgr-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command_mgr-response>) istream)
  "Deserializes a message object of type '<command_mgr-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command_mgr-response>)))
  "Returns string type for a service object of type '<command_mgr-response>"
  "motor_management/command_mgrResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_mgr-response)))
  "Returns string type for a service object of type 'command_mgr-response"
  "motor_management/command_mgrResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command_mgr-response>)))
  "Returns md5sum for a message object of type '<command_mgr-response>"
  "ea9b8ec83958423851a8ad68108ef421")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command_mgr-response)))
  "Returns md5sum for a message object of type 'command_mgr-response"
  "ea9b8ec83958423851a8ad68108ef421")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command_mgr-response>)))
  "Returns full string definition for message of type '<command_mgr-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command_mgr-response)))
  "Returns full string definition for message of type 'command_mgr-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command_mgr-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command_mgr-response>))
  "Converts a ROS message object to a list"
  (cl:list 'command_mgr-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'command_mgr)))
  'command_mgr-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'command_mgr)))
  'command_mgr-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_mgr)))
  "Returns string type for a service object of type '<command_mgr>"
  "motor_management/command_mgr")