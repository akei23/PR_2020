;; Auto-generated. Do not edit!


(when (boundp 'pr_msg::PrMsg)
  (if (not (find-package "PR_MSG"))
    (make-package "PR_MSG"))
  (shadow 'PrMsg (find-package "PR_MSG")))
(unless (find-package "PR_MSG::PRMSG")
  (make-package "PR_MSG::PRMSG"))

(in-package "ROS")
;;//! \htmlinclude PrMsg.msg.html


(defclass pr_msg::PrMsg
  :super ros::object
  :slots (_pick_ball _pass_ball _load_ball _kick_ball ))

(defmethod pr_msg::PrMsg
  (:init
   (&key
    ((:pick_ball __pick_ball) 0)
    ((:pass_ball __pass_ball) 0)
    ((:load_ball __load_ball) 0)
    ((:kick_ball __kick_ball) 0)
    )
   (send-super :init)
   (setq _pick_ball (round __pick_ball))
   (setq _pass_ball (round __pass_ball))
   (setq _load_ball (round __load_ball))
   (setq _kick_ball (round __kick_ball))
   self)
  (:pick_ball
   (&optional __pick_ball)
   (if __pick_ball (setq _pick_ball __pick_ball)) _pick_ball)
  (:pass_ball
   (&optional __pass_ball)
   (if __pass_ball (setq _pass_ball __pass_ball)) _pass_ball)
  (:load_ball
   (&optional __load_ball)
   (if __load_ball (setq _load_ball __load_ball)) _load_ball)
  (:kick_ball
   (&optional __kick_ball)
   (if __kick_ball (setq _kick_ball __kick_ball)) _kick_ball)
  (:serialization-length
   ()
   (+
    ;; int32 _pick_ball
    4
    ;; int32 _pass_ball
    4
    ;; int32 _load_ball
    4
    ;; int32 _kick_ball
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pick_ball
       (write-long _pick_ball s)
     ;; int32 _pass_ball
       (write-long _pass_ball s)
     ;; int32 _load_ball
       (write-long _load_ball s)
     ;; int32 _kick_ball
       (write-long _kick_ball s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pick_ball
     (setq _pick_ball (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pass_ball
     (setq _pass_ball (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _load_ball
     (setq _load_ball (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kick_ball
     (setq _kick_ball (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pr_msg::PrMsg :md5sum-) "ef8e6c4f42267afdb6b4ce014b5df775")
(setf (get pr_msg::PrMsg :datatype-) "pr_msg/PrMsg")
(setf (get pr_msg::PrMsg :definition-)
      "int32 pick_ball
int32 pass_ball
int32 load_ball
int32 kick_ball

")



(provide :pr_msg/PrMsg "ef8e6c4f42267afdb6b4ce014b5df775")


