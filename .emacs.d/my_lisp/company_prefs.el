;; Use company globally
(use-package company
  :ensure t
  :config
  ;; Use it in every buffer
  (add-hook 'after-init-hook 'global-company-mode))
