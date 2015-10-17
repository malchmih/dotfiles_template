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

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq user-packages
  '(
    cider
    clojure-cheatsheet

    monokai-theme
    base16-theme
    solarized-theme
    ))

;; List of packages to exclude.
(setq user-excluded-packages '())

(defun user/post-init-cider ()
  (use-package cider
    :defer t
    :init
    (progn
      (add-hook 'clojure-mode-hook #'enable-paredit-mode))
    :config
    (progn
      (defun cider-project-reset ()
        (interactive)
        (cider-interactive-eval "(reloaded/reset)"))
      (defun cider-figwheel-repl ()
        (interactive)
        (save-some-buffers)
        (with-current-buffer (cider-current-repl-buffer)
          (goto-char (point-max))
          (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/cljs-repl)")
          (cider-repl-return)))

      (evil-leader/set-key-for-mode 'clojure-mode
        "mj" 'cider-project-reset)
      (evil-leader/set-key-for-mode 'clojure-mode
        "msj" 'cider-figwheel-repl)
      (evil-leader/set-key-for-mode 'clojure-mode
        "msC" 'cider-replicate-connection)
      (dolist (m '(cider-repl-mode))
        (evil-leader/set-key-for-mode m
          "mc" 'cider-repl-clear-buffer))
      (evil-leader/set-key-for-mode 'clojure-mode
        "mhc" 'clojure-cheatsheet)
      (define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-square)
      (define-key paredit-mode-map (kbd "M-]") 'paredit-close-square-and-newline)
      (define-key paredit-mode-map (kbd "M-{") 'paredit-wrap-curly)
      (define-key paredit-mode-map (kbd "M-}") 'paredit-close-curly-and-newline))))

(defun user/init-clojure-cheatsheet ())

(defun user/init-monokai-theme ())

(defun user/init-base16-theme ())

(defun user/init-solarized-theme ())


;; For each package, define a function user/init-<package-user>
;;
;; (defun user/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
