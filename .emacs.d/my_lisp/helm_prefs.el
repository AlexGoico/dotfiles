;; Global Helm mode replacing meta key and finding files
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files))
  :config
  (helm-mode 1)

  (use-package helm-descbinds
    :ensure t
    :config
    (helm-descbinds-mode))

  (setq
   helm-gtags-ignore-case t
   helm-gtags-auto-update t
   helm-gtags-use-input-at-cursor t
   helm-gtags-pulse-at-cursor t
   helm-gtags-prefix-key "\C-cg"
   helm-gtags-suggested-key-mapping t
   )

  ;; Helm Gtags
  (use-package helm-gtags
    :ensure t
    :bind (:map helm-gtags-mode-map
                ("C-c g a" . helm-gtags-tags-in-this-function)
                ("C-j" . helm-gtags-select)
                ("M-." . helm-gtags-dwin)
                ("M-," . helm-gtags-pop-stack)
                ("C-c <" . helm-gtags-previous-history)
                ("C-c >" . helm-gtags-next-history))
    :config
    ;; Enable helm-gtags-mode
    (add-hook 'dired-mode-hook 'helm-gtags-mode)
    (add-hook 'eshell-mode-hook 'helm-gtags-mode)
    (add-hook 'c-mode-hook 'helm-gtags-mode)
    (add-hook 'c++-mode-hook 'helm-gtags-mode)
    (add-hook 'asm-mode-hook 'helm-gtags-mode)))
