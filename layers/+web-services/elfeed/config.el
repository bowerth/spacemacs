;;; config.el --- elfeed Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Variables

(defvar elfeed-enable-web-interface nil
  "If non nil start a web server to consult the database in a web browser.")

(setq rmh-elfeed-org-files (list "~/.emacs.d/private/elfeed.org"))

(setq-default elfeed-search-filter "@1-week-ago +unread ")
