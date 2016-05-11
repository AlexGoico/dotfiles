; Replace M-x with completion M-x
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)

; Helm Descbinds
(require 'helm-descbinds)
(helm-descbinds-mode)
