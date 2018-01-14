;; Display line numbers in all buffers
(setq linum-format "%d ")
(global-linum-mode)

(global-set-key (kbd "C-x C-b") 'ibuffer)
;; Sets columns to be displayed along with rows in the minibuffer
;;by default
(setq-default column-number-mode t)

;; Sets tabs to be interpreted as spaces by default
(setq-default indent-tabs-mode nil)
