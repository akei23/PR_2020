
(cl:in-package :asdf)

(defsystem "pr_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PrMsg" :depends-on ("_package_PrMsg"))
    (:file "_package_PrMsg" :depends-on ("_package"))
  ))