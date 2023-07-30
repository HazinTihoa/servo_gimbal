; Auto-generated. Do not edit!


(cl:in-package ino_serial-msg)


;//! \htmlinclude msg.msg.html

(cl:defclass <msg> (roslisp-msg-protocol:ros-message)
  ((x_axis
    :reader x_axis
    :initarg :x_axis
    :type cl:integer
    :initform 0)
   (y_axis
    :reader y_axis
    :initarg :y_axis
    :type cl:integer
    :initform 0))
)

(cl:defclass msg (<msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ino_serial-msg:<msg> is deprecated: use ino_serial-msg:msg instead.")))

(cl:ensure-generic-function 'x_axis-val :lambda-list '(m))
(cl:defmethod x_axis-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ino_serial-msg:x_axis-val is deprecated.  Use ino_serial-msg:x_axis instead.")
  (x_axis m))

(cl:ensure-generic-function 'y_axis-val :lambda-list '(m))
(cl:defmethod y_axis-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ino_serial-msg:y_axis-val is deprecated.  Use ino_serial-msg:y_axis instead.")
  (y_axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg>) ostream)
  "Serializes a message object of type '<msg>"
  (cl:let* ((signed (cl:slot-value msg 'x_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg>) istream)
  "Deserializes a message object of type '<msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_axis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_axis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg>)))
  "Returns string type for a message object of type '<msg>"
  "ino_serial/msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg)))
  "Returns string type for a message object of type 'msg"
  "ino_serial/msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg>)))
  "Returns md5sum for a message object of type '<msg>"
  "7cd52d162ee179ffe08c8236a2ba4f89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg)))
  "Returns md5sum for a message object of type 'msg"
  "7cd52d162ee179ffe08c8236a2ba4f89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg>)))
  "Returns full string definition for message of type '<msg>"
  (cl:format cl:nil "int32 x_axis~%int32 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg)))
  "Returns full string definition for message of type 'msg"
  (cl:format cl:nil "int32 x_axis~%int32 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg>))
  "Converts a ROS message object to a list"
  (cl:list 'msg
    (cl:cons ':x_axis (x_axis msg))
    (cl:cons ':y_axis (y_axis msg))
))
