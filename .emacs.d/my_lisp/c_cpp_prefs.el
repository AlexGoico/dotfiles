(defun indent-c-case-default ()
  (c-set-offset 'case-label '+))

(use-package cc-mode
  :ensure t
  :config
  ;; Uses the Allman style for writing in all cc-mode languages:
  ;; https://en.wikipedia.org/wiki/Indent_style#Allman_style
  (setq c-default-style "bsd")

  ;; Indent cc-mode languages with 2 indents
  (setq c-basic-offset 2)

  ;; Registers a function for case statements to be indented
  ;; instead of inling them in c and c++
  (add-hook 'c-mode-common-hook   'indent-c-case-default)
  (add-hook 'c++-mode-common-hook 'indent-c-case-default))

(use-package disaster
  :ensure t
  :bind
  (:map c-mode-map
        "C-c d" 'disaster)
  (:map c-mode-map
        "C-c d" 'disaster))

;; TODO: Make a syntax checker that combines cppcheck and gcc checking
;; register it and use it for cpp


;; c-mode-base-map is a parent of objc-mode-map, java-mode-map
;; idl-mode-map, pike-mode-map in addition to c-mode-map and c++-mode-map.
;; Thus I do not use c-mode-base-map since disaster is a tool only for
;; c and c++. 
