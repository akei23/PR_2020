; Auto-generated. Do not edit!


(cl:in-package pr_msg-msg)


;//! \htmlinclude PrMsg.msg.html

(cl:defclass <PrMsg> (roslisp-msg-protocol:ros-message)
  ((pick_ball
    :reader pick_ball
    :initarg :pick_ball
    :type cl:integer
    :initform 0)
   (pass_ball
    :reader pass_ball
    :initarg :pass_ball
    :type cl:integer
    :initform 0)
   (load_ball
    :reader load_ball
    :initarg :load_ball
    :type cl:integer
    :initform 0)
   (kick_ball
    :reader kick_ball
    :initarg :kick_ball
    :type cl:integer
    :initform 0))
)

(cl:defclass PrMsg (<PrMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr_msg-msg:<PrMsg> is deprecated: use pr_msg-msg:PrMsg instead.")))

(cl:ensure-generic-function 'pick_ball-val :lambda-list '(m))
(cl:defmethod pick_ball-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pick_ball-val is deprecated.  Use pr_msg-msg:pick_ball instead.")
  (pick_ball m))

(cl:ensure-generic-function 'pass_ball-val :lambda-list '(m))
(cl:defmethod pass_ball-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pass_ball-val is deprecated.  Use pr_msg-msg:pass_ball instead.")
  (pass_ball m))

(cl:ensure-generic-function 'load_ball-val :lambda-list '(m))
(cl:defmethod load_ball-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:load_ball-val is deprecated.  Use pr_msg-msg:load_ball instead.")
  (load_ball m))

(cl:ensure-generic-function 'kick_ball-val :lambda-list '(m))
(cl:defmethod kick_ball-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:kick_ball-val is deprecated.  Use pr_msg-msg:kick_ball instead.")
  (kick_ball m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrMsg>) ostream)
  "Serializes a message object of type '<PrMsg>"
  (cl:let* ((signed (cl:slot-value msg 'pick_ball)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pass_ball)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'load_ball)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kick_ball)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrMsg>) istream)
  "Deserializes a message object of type '<PrMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_ball) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pass_ball) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'load_ball) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kick_ball) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrMsg>)))
  "Returns string type for a message object of type '<PrMsg>"
  "pr_msg/PrMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrMsg)))
  "Returns string type for a message object of type 'PrMsg"
  "pr_msg/PrMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrMsg>)))
  "Returns md5sum for a message object of type '<PrMsg>"
  "ef8e6c4f42267afdb6b4ce014b5df775")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrMsg)))
  "Returns md5sum for a message object of type 'PrMsg"
  "ef8e6c4f42267afdb6b4ce014b5df775")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrMsg>)))
  "Returns full string definition for message of type '<PrMsg>"
  (cl:format cl:nil "int32 pick_ball~%int32 pass_ball~%int32 load_ball~%int32 kick_ball~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrMsg)))
  "Returns full string definition for message of type 'PrMsg"
  (cl:format cl:nil "int32 pick_ball~%int32 pass_ball~%int32 load_ball~%int32 kick_ball~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrMsg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PrMsg
    (cl:cons ':pick_ball (pick_ball msg))
    (cl:cons ':pass_ball (pass_ball msg))
    (cl:cons ':load_ball (load_ball msg))
    (cl:cons ':kick_ball (kick_ball msg))
))
