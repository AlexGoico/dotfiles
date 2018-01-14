;;;;; Typedeph's init.el

;;; Remove emacs start screen

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-message t)

(cond ((string-equal system-type "darwin") (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el"))
      (t (require 'cask "")))
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;;; Theme
;; Downloads hipster theme from melpa and enables it
(load-theme 'material t)

;;; Font
; Bistream fonts must be downloaded with package manager.
; ttf-bistream-vera on Arch Linux
;(set-default-font "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal-monospace-13-*-*-*-m-0-iso10646-1")

;;; Packages
;; Package Preferences Path
(setq load-path (cons "~/.emacs.d/my_lisp" load-path))

;; Tools
(load "defaults.el")
(load "my_functions.el")
(load "linum_prefs.el")
(load "evil_prefs.el")
(load "flycheck_prefs.el")
(load "yas_prefs.el")
(load "company_prefs.el")
(load "paredit_prefs.el")
(load "ggtags_prefs.el")
(load "helm_prefs.el")
(load "projectile_prefs.el")
(load "docker_prefs.el")

;; Languages
(load "latex_prefs.el")
(load "c_cpp_prefs.el")
;(load "clojure_prefs.el")
(load "json_prefs.el")
(load "haskell_mode_prefs.el")
(load "js_prefs.el")
(load "org_mode_prefs.el")
(load "magit-prefs.el")

;; Allow narrowing
(put 'narrow-to-region 'disabled nil)

;; Token used for paradox in list packages
(setq paradox-github-token "f6698bd329deab57656b06c23a26aba30bc4ef8b")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" default)))
 '(package-selected-packages
   (quote
    (material-theme afternoon-theme auto-complete clojure-mode docker-tramp edn goto-chg haskell-mode inflections json-mode json-reformat json-snatcher magit magit-popup math-symbol-lists multiple-cursors paredit peg popup project-persist queue skewer-mode slime spinner swiper tablist undo-tree with-editor yasnippet package-build shut-up epl git commander f dash s pallet rjsx-mode json-navigator markdown-mode flycheck-rust cargo helm-projectile projectile dockerfile-mode docker racer rust-mode zeal-at-point use-package rainbow-identifiers rainbow-delimiters pyvenv python-environment paradox org-bullets org nhexl-mode latex-preview-pane idomenu hipster-theme highlight-indentation helm-gtags helm-descbinds ggtags flycheck-pyflakes flycheck-haskell find-file-in-project evil-magit epc disaster company cmake-mode clj-refactor auctex ac-slime ac-math ac-js2 0blayout)))
 '(paradox-automatically-star t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

