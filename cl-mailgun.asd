(defsystem cl-mailgun
  :name "cl-mailgun"
  :author "Bennett Roesch"
  :maintainer "Bennett Roesch"
  :version "0.1"
  :description "Wrapper library for Mailgun"
  :long-description "A wrapper library for the Mailgun HTTP API"
  :serial t
  :components ((:file "mailgun"))
  :depends-on (:drakma :jsown))

