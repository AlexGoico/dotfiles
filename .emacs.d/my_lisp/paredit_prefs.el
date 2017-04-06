;; Loads paredit on usage.
(use-package paredit
  :ensure t
  :config
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook          #'enable-paredit-mode))
;(autoload 'enable-paredit-mode "paredit"
; "Turn on pseudo-structural editing of Lisp code." t)
