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
  :slots (_pick_slide _pick_grasp _pick_turn _pick_lift _kick_roll _kick_fire _pass_tee ))

(defmethod pr_msg::PrMsg
  (:init
   (&key
    ((:pick_slide __pick_slide) 0)
    ((:pick_grasp __pick_grasp) 0)
    ((:pick_turn __pick_turn) 0)
    ((:pick_lift __pick_lift) 0)
    ((:kick_roll __kick_roll) 0)
    ((:kick_fire __kick_fire) 0)
    ((:pass_tee __pass_tee) 0)
    )
   (send-super :init)
   (setq _pick_slide (round __pick_slide))
   (setq _pick_grasp (round __pick_grasp))
   (setq _pick_turn (round __pick_turn))
   (setq _pick_lift (round __pick_lift))
   (setq _kick_roll (round __kick_roll))
   (setq _kick_fire (round __kick_fire))
   (setq _pass_tee (round __pass_tee))
   self)
  (:pick_slide
   (&optional __pick_slide)
   (if __pick_slide (setq _pick_slide __pick_slide)) _pick_slide)
  (:pick_grasp
   (&optional __pick_grasp)
   (if __pick_grasp (setq _pick_grasp __pick_grasp)) _pick_grasp)
  (:pick_turn
   (&optional __pick_turn)
   (if __pick_turn (setq _pick_turn __pick_turn)) _pick_turn)
  (:pick_lift
   (&optional __pick_lift)
   (if __pick_lift (setq _pick_lift __pick_lift)) _pick_lift)
  (:kick_roll
   (&optional __kick_roll)
   (if __kick_roll (setq _kick_roll __kick_roll)) _kick_roll)
  (:kick_fire
   (&optional __kick_fire)
   (if __kick_fire (setq _kick_fire __kick_fire)) _kick_fire)
  (:pass_tee
   (&optional __pass_tee)
   (if __pass_tee (setq _pass_tee __pass_tee)) _pass_tee)
  (:serialization-length
   ()
   (+
    ;; int32 _pick_slide
    4
    ;; int32 _pick_grasp
    4
    ;; int32 _pick_turn
    4
    ;; int32 _pick_lift
    4
    ;; int32 _kick_roll
    4
    ;; int32 _kick_fire
    4
    ;; int32 _pass_tee
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pick_slide
       (write-long _pick_slide s)
     ;; int32 _pick_grasp
       (write-long _pick_grasp s)
     ;; int32 _pick_turn
       (write-long _pick_turn s)
     ;; int32 _pick_lift
       (write-long _pick_lift s)
     ;; int32 _kick_roll
       (write-long _kick_roll s)
     ;; int32 _kick_fire
       (write-long _kick_fire s)
     ;; int32 _pass_tee
       (write-long _pass_tee s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pick_slide
     (setq _pick_slide (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pick_grasp
     (setq _pick_grasp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pick_turn
     (setq _pick_turn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pick_lift
     (setq _pick_lift (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kick_roll
     (setq _kick_roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kick_fire
     (setq _kick_fire (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pass_tee
     (setq _pass_tee (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pr_msg::PrMsg :md5sum-) "0b7477fdb01b1f98d79601f95a7c0be2")
(setf (get pr_msg::PrMsg :datatype-) "pr_msg/PrMsg")
(setf (get pr_msg::PrMsg :definition-)
      "int32 pick_slide
int32 pick_grasp
int32 pick_turn
int32 pick_lift
int32 kick_roll
int32 kick_fire
int32 pass_tee

")



(provide :pr_msg/PrMsg "0b7477fdb01b1f98d79601f95a7c0be2")


