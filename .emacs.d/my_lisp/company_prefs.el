;; Use company globally
(use-package company
  :ensure t
  :bind ("C-c M-c C-c" . company-complete)
  :init
  ;; Use it in every buffer
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.0001))
