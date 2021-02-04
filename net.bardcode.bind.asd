;;;; net.bardcode.bind.asd

(asdf:defsystem #:net.bardcode.bind
  :description "Describe net.bardcode.bind here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "bind")))

;;; (asdf:load-system :net.bardcode.bind)
;;; (ql:quickload :net.bardcode.bind)
