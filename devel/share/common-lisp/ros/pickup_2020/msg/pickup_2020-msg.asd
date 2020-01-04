
(cl:in-package :asdf)

(defsystem "pickup_2020-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PR_control" :depends-on ("_package_PR_control"))
    (:file "_package_PR_control" :depends-on ("_package"))
  ))