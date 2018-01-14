; Source: http://julienblanchard.com/2016/fancy-rust-development-with-emacs/
;; Rust mode
(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

;; Enabling racer
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "/home/agoico/cloned/rust/src") ;; Rust source code PATH

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

;; Rust flycheck
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
