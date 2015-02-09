;;; packages.el --- user Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar user-packages
  '(
    ;; package users go here
    ensime
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar user-excluded-packages '()
  "List of packages to exclude.")

(defun user/init-ensime ()
  (use-package ensime
    :commands (ensime-mode)
    :config
    (progn
      (spacemacs/declare-prefix "d" "ensime")
      (evil-leader/set-key
        "ds" 'ensime-sbt-switch
        "de" 'ensime)
    )
  )
)
;; For each package, define a function user/init-<package-user>
;;
;; (defun user/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
