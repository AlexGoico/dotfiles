;;;;; Typedeph's init.el

;;; Remove emacs start screen
(setq inhibit-startup-message t)

;;; Package Repositories
(require 'package)
(add-to-list 'package-archives 
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;;; Emacs Source Code Tags
(setq tags-table-list
      '("/usr/share/emacs/24.3/lisp/TAGS"))

;;; Theme
; Hipster needs to be downloaded from melpa repo
; download using M-x list-packages, search with C-s hipster
(load-theme 'hipster t)

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

;; Languages
(load "latex_prefs.el")
(load "c_cpp_prefs.el")
(load "common-lisp_prefs.el")
(load "clojure_prefs.el")
(load "haskell_mode_prefs.el")
(load "js_prefs.el")
(load "org_mode_prefs.el")
(load "magit-prefs.el")
(put 'narrow-to-region 'disabled nil)
(global-set-key "\C-cd" 'zeal-at-point)

;; Token used for paradox in list packages
(setq paradox-github-token "f6698bd329deab57656b06c23a26aba30bc4ef8b")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(paradox-automatically-star t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

