; Sets tabs to be interpreted as spaces by default
(setq-default indent-tabs-mode nil)
; Sets columns to be displayed above the minibuffer? by default
(setq-default column-number-mode t)
; Display line numbers in all buffers
(global-linum-mode)

; Uses the Allman style for writing C:
; https://en.wikipedia.org/wiki/Indent_style#Allman_style
(setq c-default-style "bsd"
      c-basic-offset  4)

; Indents case statements instead of inling them in
; c and c++.
(defun indent-c-case-default ()
  (c-set-offset 'case-label '+))
(add-hook 'c-mode-common-hook   'indent-c-case-default)
(add-hook 'c++-mode-common-hook 'indent-c-case-default)
