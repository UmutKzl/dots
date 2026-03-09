(provide 'mail)

(setq gnus-select-method
      '(nnimap "icloud"
               (nnimap-address "imap.mail.me.com")
               (nnimap-server-port "imaps")
               (nnimap-stream ssl)))

(setq send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.mail.me.com"
      smtpmail-smtp-service 587
      smtpmail-stream-type 'starttls)

(setq user-mail-address "umut.exe@icloud.com"
      user-full-name "UmutKzl")
