(use-package js2-mode
  :ensure t
  :config
  ;; Better mode for JavaScript
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

  ;; Use 2 indents for normal js mode and js2 mode
  (setq js-indent-level 2)
  (setq js-indent-switch-offset 2)
  (setq js2-basic-offset 2))
