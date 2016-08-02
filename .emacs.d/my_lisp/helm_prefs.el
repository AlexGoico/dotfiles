(helm-mode 1)

; Replace keybinds with completion
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

; Helm Descbinds
(require 'helm-descbinds)
(helm-descbinds-mode)
