; Auto-generated. Do not edit!


(cl:in-package pr_msg-msg)


;//! \htmlinclude PrMsg.msg.html

(cl:defclass <PrMsg> (roslisp-msg-protocol:ros-message)
  ((pick_slide
    :reader pick_slide
    :initarg :pick_slide
    :type cl:integer
    :initform 0)
   (pick_grasp
    :reader pick_grasp
    :initarg :pick_grasp
    :type cl:integer
    :initform 0)
   (pick_turn
    :reader pick_turn
    :initarg :pick_turn
    :type cl:integer
    :initform 0)
   (pick_lift
    :reader pick_lift
    :initarg :pick_lift
    :type cl:integer
    :initform 0)
   (kick_roll
    :reader kick_roll
    :initarg :kick_roll
    :type cl:integer
    :initform 0)
   (Kick_fire
    :reader Kick_fire
    :initarg :Kick_fire
    :type cl:integer
    :initform 0)
   (pass_tee
    :reader pass_tee
    :initarg :pass_tee
    :type cl:integer
    :initform 0))
)

(cl:defclass PrMsg (<PrMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr_msg-msg:<PrMsg> is deprecated: use pr_msg-msg:PrMsg instead.")))

(cl:ensure-generic-function 'pick_slide-val :lambda-list '(m))
(cl:defmethod pick_slide-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pick_slide-val is deprecated.  Use pr_msg-msg:pick_slide instead.")
  (pick_slide m))

(cl:ensure-generic-function 'pick_grasp-val :lambda-list '(m))
(cl:defmethod pick_grasp-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pick_grasp-val is deprecated.  Use pr_msg-msg:pick_grasp instead.")
  (pick_grasp m))

(cl:ensure-generic-function 'pick_turn-val :lambda-list '(m))
(cl:defmethod pick_turn-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pick_turn-val is deprecated.  Use pr_msg-msg:pick_turn instead.")
  (pick_turn m))

(cl:ensure-generic-function 'pick_lift-val :lambda-list '(m))
(cl:defmethod pick_lift-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pick_lift-val is deprecated.  Use pr_msg-msg:pick_lift instead.")
  (pick_lift m))

(cl:ensure-generic-function 'kick_roll-val :lambda-list '(m))
(cl:defmethod kick_roll-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:kick_roll-val is deprecated.  Use pr_msg-msg:kick_roll instead.")
  (kick_roll m))

(cl:ensure-generic-function 'Kick_fire-val :lambda-list '(m))
(cl:defmethod Kick_fire-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:Kick_fire-val is deprecated.  Use pr_msg-msg:Kick_fire instead.")
  (Kick_fire m))

(cl:ensure-generic-function 'pass_tee-val :lambda-list '(m))
(cl:defmethod pass_tee-val ((m <PrMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_msg-msg:pass_tee-val is deprecated.  Use pr_msg-msg:pass_tee instead.")
  (pass_tee m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrMsg>) ostream)
  "Serializes a message object of type '<PrMsg>"
  (cl:let* ((signed (cl:slot-value msg 'pick_slide)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pick_grasp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pick_turn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pick_lift)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kick_roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Kick_fire)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pass_tee)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
      (cl:setf (cl:slot-value msg 'pick_slide) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_grasp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_turn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_lift) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kick_roll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Kick_fire) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pass_tee) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "145426011257f665260f74de824eb711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrMsg)))
  "Returns md5sum for a message object of type 'PrMsg"
  "145426011257f665260f74de824eb711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrMsg>)))
  "Returns full string definition for message of type '<PrMsg>"
  (cl:format cl:nil "int32 pick_slide~%int32 pick_grasp~%int32 pick_turn~%int32 pick_lift~%int32 kick_roll~%int32 Kick_fire~%int32 pass_tee~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrMsg)))
  "Returns full string definition for message of type 'PrMsg"
  (cl:format cl:nil "int32 pick_slide~%int32 pick_grasp~%int32 pick_turn~%int32 pick_lift~%int32 kick_roll~%int32 Kick_fire~%int32 pass_tee~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrMsg>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PrMsg
    (cl:cons ':pick_slide (pick_slide msg))
    (cl:cons ':pick_grasp (pick_grasp msg))
    (cl:cons ':pick_turn (pick_turn msg))
    (cl:cons ':pick_lift (pick_lift msg))
    (cl:cons ':kick_roll (kick_roll msg))
    (cl:cons ':Kick_fire (Kick_fire msg))
    (cl:cons ':pass_tee (pass_tee msg))
))
