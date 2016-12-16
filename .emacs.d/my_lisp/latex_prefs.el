;; Includes tex and tex math
(require 'ac-math)
(require 'tex)
(setq TeX-PDF-mode t)

(latex-preview-pane-enable)
;; ;; Autocomplete for latex mode
;; (add-to-list 'ac-modes 'latex-mode)
;; ;; add ac-sources to default ac-sources
;; (defun ac-latex-mode-setup ()         
;;   (setq ac-sources
;;         (append '(ac-source-math-unicode ac-source-math-latex
;;                                          ac-source-latex-commands)
;;                 ac-sources)))
;; (add-hook 'TeX-mode-hook 'ac-latex-mode-setup)
