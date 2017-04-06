;; Includes tex
(use-package tex
  :ensure auctex
  :config
  (setq TeX-PDF-mode t)

  (latex-preview-pane-enable))
