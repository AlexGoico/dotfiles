;;;;; Typedeph's init.el

; Alex Goico
; 03/20/15

;;; Package Repositories
(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)
(setq tags-table-list
      '("/usr/share/emacs/24.3/lisp/TAGS"))

;;; Theme
; Hipster needs to be downloaded from melpa repo
; download using M-x list-packages, search with C-s hipster
(load-theme 'hipster t)

;;; Font
; Bistream fonts must be downloaded with package manager.
; ttf-bistream-vera on Arch Linux
(set-default-font "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal-monospace-13-*-*-*-m-0-iso10646-1")

;;; Packages
;; Package Path
(setq load-path (cons "~/.emacs.d/my_lisp" load-path))
;; Tools
(load "defaults.el")
(load "my_functions.el")
(load "evil_prefs.el")
(load "flycheck_prefs.el")
(load "yas_prefs.el")
(load "autocomp_prefs.el")
(load "paredit_prefs.el")
;; Languages
(load "c_cpp_prefs.el")
(load "common-lisp_prefs.el")
(load "clojure_prefs.el")
(load "haskell_mode_prefs.el")
(load "js_prefs.el")
