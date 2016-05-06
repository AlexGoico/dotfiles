; Enables flycheck globally after emacs has initialized
(add-hook 'after-init-hook #'global-flycheck-mode)

; Defaults flycheck to c11
(add-hook 'c-mode-hook 
	  (lambda () (setq flycheck-gcc-language-standard "gnu11")))
; Defaults flycheck to c++11 and uses gcc instead of clang
(add-hook 'c++-mode-hook
          (lambda ()
            (setq flycheck-checker 'c/c++-gcc)
            (setq flycheck-gcc-language-standard "gnu++11")))

; Brings python linting to flycheck
(require 'flycheck-pyflakes)

; Haskell linting (?)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))
