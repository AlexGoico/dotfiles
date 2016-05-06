; Better mode for JavaScript
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js-indent-level 2)
(setq js2-basic-offset 2)
;(add-hook 'js2-mode-hook 'ac-js2-mode)

; Server Skewer Mode Stuff
;(require 'simple-httpd)
;(httpd-start)

;(add-hook 'js2-mode-hook 'skewer-mode)
;(add-hook 'css-mode-hook 'skewer-css-mode)
;(add-hook 'html-mode-hook 'skewer-html-mode)

;(add-hook 'kill-emacs-hook 'httpd-stop)
