(package-initialize)
(setq make-backup-files nil)
(setq debug-on-error t)
(setq debugger-batch-max-lines 10000)
(global-font-lock-mode 1)
(require 'color-theme)
(color-theme-initialize)
(color-theme-emacs-21)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
(add-to-list 'load-path "/home/ox")
(load-library "ox-reveal")

(find-file "/ox/slides.org")

(if (file-exists-p "/ox/compile.el")
    (load-file "/ox/compile.el")
  (org-reveal-export-to-html))
