;;; config.el --- Scala Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(spacemacs|define-jump-handlers scala-mode)

(spacemacs|define-jump-handlers scala-mode)

(defvar scala-enable-eldoc nil
  "If non nil then eldoc-mode is enabled in the scala layer.")

(defvar scala-auto-insert-asterisk-in-comments nil
  "If non-nil automatically insert leading asterisk in multi-line comments.")

(defvar scala-use-unicode-arrows nil
  "If non-nil then `->`, `=>` and `<-` are replaced with unicode arrows.")

(defvar scala-auto-start-ensime nil
  "If non nil then ensime will be started when a scala file is opened.")

(fset 'send-line-repl
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 33554437 M-return 115 114 right] 0 "%d")) arg)))

(fset 'send-region-repl
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 134217797 M-return 115 114 right] 0 "%d")) arg)))

(global-set-key (kbd "C-<return>") 'send-line-repl)`
(global-set-key (kbd "C-x C-\\") 'send-region-repl)
