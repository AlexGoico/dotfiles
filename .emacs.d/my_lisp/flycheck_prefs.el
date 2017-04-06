;; Enables flycheck globally after emacs has initialized
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)

  (use-package flycheck-pyflakes
    :ensure t)
  ;; Remove annoying warnings of header and footer comments in elisp
  (with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

  ;; Defaults flycheck to c11
  (add-hook 'c-mode-hook 
            (lambda () (setq flycheck-gcc-language-standard "gnu11")))
  ;; Defaults flycheck to c++11 and uses gcc instead of clang
  (add-hook 'c++-mode-hook
            (lambda ()
              (setq flycheck-checker 'c/c++-gcc)
              (setq flycheck-gcc-language-standard "gnu++11")))

  ;; Haskell linting (?)
  (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

