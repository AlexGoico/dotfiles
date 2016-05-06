(require 'cc-mode)

; TODO: Make a syntax checker that combines cppcheck and gcc checking
; register it and use it for cpp


; c-mode-base-map is a parent of objc-mode-map, java-mode-map
; idl-mode-map, pike-mode-map in addition to c-mode-map and c++-mode-map.
; Thus I do not use c-mode-base-map since disaster is a tool only for
; c and c++. 
(define-key c-mode-map (kbd "C-c d") 'disaster)
(define-key c++-mode-map (kbd "C-c d") 'disaster)
