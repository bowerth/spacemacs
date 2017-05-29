;;; config.el --- mu4e Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar mu4e-installation-path "/usr/local/share/emacs/site-lisp/mu4e"
  "Installation path for mu4e.")

(defvar mu4e-account-alist nil
  "Account alist for custom multi-account compose.")

(defvar mu4e-enable-notifications nil
  "If non-nil, enable desktop notifications for unread emails.")

(defvar mu4e-enable-mode-line nil
  "If non-nil, enable display of unread emails in mode-line.")

(when mu4e-installation-path
  (push mu4e-installation-path load-path))

(setq mu4e-headers-skip-duplicates t)

;; (setq mu4e-get-mail-command "offlineimap")
(setq mu4e-get-mail-command "mbsync -V gmail")

(setq mu4e-maildir "~/Maildir")

(setq mu4e-drafts-folder
      (lambda (msg)
        ;; the 'and msg' is to handle the case where msg is nil
        (if (and msg
                 (mu4e-message-contact-field-matches msg :from "bo.werth@gmail.com"))
            "/Personal/[Google Mail].Drafts"
          "/Personal/[Google Mail].Drafts")))

(setq mu4e-sent-folder
      (lambda (msg)
        ;; the 'and msg' is to handle the case where msg is nil
        (if (and msg
                 (mu4e-message-contact-field-matches msg :from "bo.werth@gmail.com"))
            "/Personal/[Google Mail].Sent Mail"
          "/Personal/[Google Mail].Sent Mail")))


(setq mu4e-trash-folder
      (lambda (msg)
        ;; the 'and msg' is to handle the case where msg is nil
        (if (and msg
                 (mu4e-message-contact-field-matches msg :to "bo.werth@gmail.com"))
            "/Personal/[Google Mail].Trash"
          "/Personal/[Google Mail].Trash")))

(setq mu4e-maildir-shortcuts
      '( ("/Personal/INBOX"                     . ?i)
         ("/Personal/[Google Mail].Sent Mail"   . ?s)))
