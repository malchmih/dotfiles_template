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
    solarized-theme
    cider
    monokai
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar user-excluded-packages '()
  "List of packages to exclude.")

(defun user/init-cider ()
  (use-package cider
    :defer t
    :config
    (progn
      (defun cider-project-reset ()
        (interactive)
        (cider-interactive-eval "(reloaded.repl/reset)"))
      (evil-leader/set-key-for-mode 'clojure-mode
        "mj" 'cider-project-reset)
      (enable-paredit-mode)
      (define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-square)
      (define-key paredit-mode-map (kbd "M-{") 'paredit-wrap-curly))))

;; For each package, define a function user/init-<package-user>
;;
;; (defun user/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
