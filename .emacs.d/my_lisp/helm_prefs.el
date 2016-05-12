; Replace keybinds with completion
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(helm-mode 1)

; Helm Descbinds
(require 'helm-descbinds)
(helm-descbinds-mode)
