
(cl:in-package :asdf)

(defsystem "pickup_2020-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pr_control" :depends-on ("_package_pr_control"))
    (:file "_package_pr_control" :depends-on ("_package"))
  ))