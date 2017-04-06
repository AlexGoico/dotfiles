;; Include haskell mode
(use-package haskell-mode
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)

  ;; Chooses the third option in Haskell mode for indentation:
  ;; https://github.com/haskell/haskell-mode/wiki/Indentation
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))
