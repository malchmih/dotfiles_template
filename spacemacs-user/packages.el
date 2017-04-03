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
    ox-reveal

    base16-theme
    ))

;; List of packages to exclude.
(setq user-excluded-packages '())

(defun user/post-init-ox-reveal ()
  (use-package ox-reveal
    :defer t
    :config
    (progn
      (dolist (m '(org-mode))
        (spacemacs/set-leader-keys-for-major-mode m
          "j" 'org-reveal-export-to-html)))))

(defun user/post-init-cider ()
  (use-package cider
    :defer t
    :init
    (progn
      (defun clojure-set-column ()
        (setq fill-column 80))

      (setq nrepl-log-messages nil
            nrepl-hide-special-buffers t
            cider-repl-prompt-function 'cider-repl-prompt-abbreviated
            cider-prompt-for-symbol nil
            cider-repl-display-in-current-window t
            cider-font-lock-dynamically '(macro core function var)
            cider-overlays-use-font-lock t
            cider-repl-toggle-pretty-printing t)
      (spacemacs/add-all-to-hook 'clojure-mode-hook
                                 'turn-on-fci-mode
                                 'golden-ratio-mode
                                 'clojure-set-column))
    :config
    (progn

      (defun cider-project-reset ()
        (interactive)
        (cider-interactive-eval "(dev/reset)"))

      (defun cider-figwheel-repl ()
        (interactive)
        (save-some-buffers)
        (with-current-buffer (cider-current-repl-buffer)
          (goto-char (point-max))
          (insert "(cljs-repl)")
          (cider-repl-return)))

      (defun cider-dev ()
        (interactive)
        (save-some-buffers)
        (with-current-buffer (cider-current-repl-buffer)
          (goto-char (point-max))
          (insert "(dev)")
          (cider-repl-return)))

      (defun cider-default-connect ()
        (interactive)
        (let* ((project-dir (clojure-project-dir))
               (host (cider-current-host))
               (port (string-to-int (car (cdr (car (cider--infer-ports host nil)))))))
          (cider-connect host port project-dir)))

      (dolist (m '(clojure-mode))
        (spacemacs/set-leader-keys-for-major-mode m
          "j" 'cider-project-reset
          "J" 'cider-dev
          "sj" 'cider-figwheel-repl
          "sa" 'cider-default-connect
          "sC" 'cider-replicate-connection
          "hc" 'clojure-cheatsheet)))))

(defun user/init-clojure-cheatsheet ())

(defun user/init-base16-theme ())

;; For each package, define a function user/init-<package-user>
;;
;; (defun user/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
