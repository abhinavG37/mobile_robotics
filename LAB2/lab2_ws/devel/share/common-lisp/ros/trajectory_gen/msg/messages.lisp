; Auto-generated. Do not edit!


(cl:in-package trajectory_gen-msg)


;//! \htmlinclude messages.msg.html

(cl:defclass <messages> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (detections
    :reader detections
    :initarg :detections
    :type cl:fixnum
    :initform 0))
)

(cl:defclass messages (<messages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <messages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'messages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_gen-msg:<messages> is deprecated: use trajectory_gen-msg:messages instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_gen-msg:seq-val is deprecated.  Use trajectory_gen-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_gen-msg:detections-val is deprecated.  Use trajectory_gen-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <messages>) ostream)
  "Serializes a message object of type '<messages>"
  (cl:let* ((signed (cl:slot-value msg 'seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detections)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <messages>) istream)
  "Deserializes a message object of type '<messages>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seq) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detections)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<messages>)))
  "Returns string type for a message object of type '<messages>"
  "trajectory_gen/messages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'messages)))
  "Returns string type for a message object of type 'messages"
  "trajectory_gen/messages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<messages>)))
  "Returns md5sum for a message object of type '<messages>"
  "c426868eb8f37d0d04ef30507c49cff3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'messages)))
  "Returns md5sum for a message object of type 'messages"
  "c426868eb8f37d0d04ef30507c49cff3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<messages>)))
  "Returns full string definition for message of type '<messages>"
  (cl:format cl:nil "int64 seq~%uint8 detections~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'messages)))
  "Returns full string definition for message of type 'messages"
  (cl:format cl:nil "int64 seq~%uint8 detections~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <messages>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <messages>))
  "Converts a ROS message object to a list"
  (cl:list 'messages
    (cl:cons ':seq (seq msg))
    (cl:cons ':detections (detections msg))
))
