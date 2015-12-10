Mailgun Email Sender
====================

This is a wrapper library for Mailgun. A Drakma HTTP request is sent to the Mailgun API and the response is parsed with JSOWN.

Example Code
============

The first thing you need to do is set your credentials like so:
```common-lisp
(mailgun-sender:set-credentials
 :api-key "key-ABCDEFGHIJKLMNOPQRSTUVWXYZ123456"
 :api-public-key "pubkey-ABCDEFGHIJKLMNOPQRSTUVWXYZ123456"
 :from-email-address "NOREPLY@EXAMPLE.COM"
 :post-url "https://api.mailgun.net/v3/MAILGUN.EXAMPLE.COM/messages")
```

Send messages like so (cc and bcc are optional):
```common-lisp
(mailgun-sender:send-message "recipient@example.com" "SUBJECT" "BODY" :cc "you@example.com" :bcc "team@example.com")
```

If you would like to validate the recipient email first (Note that emails to example.com are not valid):
```common-lisp
(mailgun-sender:validate-email-address "testing@example.com")
```