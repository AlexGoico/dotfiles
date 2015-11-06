(require 'ac-math)
(require 'tex)
(setq TeX-PDF-mode t)

(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex
                                         ac-source-latex-commands)
                ac-sources)))
(add-hook 'TeX-mode-hook 'ac-latex-mode-setup)
