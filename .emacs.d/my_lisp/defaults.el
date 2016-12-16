;; Display line numbers in all buffers
(global-linum-mode)

;; Sets columns to be displayed along with rows in the minibuffer
;;by default
(setq-default column-number-mode t)


;;; cc-mode languages are C and C-like (C++, Java,
;;; Objective C, CORBA IDL, etc.)

;; Uses the Allman style for writing in all cc-mode languages:
;; https://en.wikipedia.org/wiki/Indent_style#Allman_style
(setq c-default-style "bsd")

;; Sets tabs to be interpreted as spaces by default
(setq-default indent-tabs-mode nil)
 
;; Indent cc-mode languages with 2 indents
(setq c-basic-offset 2)

;; Registers a function for case statements to be indented
;; instead of inling them in c and c++
(defun indent-c-case-default ()
  (c-set-offset 'case-label '+))
(add-hook 'c-mode-common-hook   'indent-c-case-default)
(add-hook 'c++-mode-common-hook 'indent-c-case-default)
