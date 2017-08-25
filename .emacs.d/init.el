;;;;; Typedeph's init.el

;;; Remove emacs start screen
(setq inhibit-startup-message t)

(setq package-list
      '('company
;       'clojure-mode
;       'clj-refactor
        'evil
        'flycheck
        'flycheck-pyflakes
        'ggtags
        'haskell-mode
        'helm
        'helm-descbinds
        'helm-ggtags
        'hipster-theme
        'js2-mode
        'rainbow-delimiters-mode
        'rainbow-identifiers-mode
        'disaster
        'magit
        'org-bullets
        'paradox
        'paredit
        'use-package
        'yassnippet
        'zeal-at-point))

;;; Package Repositories
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

; Ensure use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Emacs Source Code Tags
(setq tags-table-list
      '("/usr/share/emacs/24.3/lisp/TAGS"))

;;; Theme
;; Downloads hipster theme from melpa and enables it
(use-package hipster-theme
  :ensure t
  :config
  (load-theme 'hipster t))

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
;(load "clojure_prefs.el")
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
 '(package-selected-packages
   (quote
    (flycheck-rust racer cargo rust-mode zeal-at-point use-package rainbow-identifiers rainbow-delimiters pyvenv python-environment paradox org-bullets org nhexl-mode latex-preview-pane idomenu hipster-theme highlight-indentation helm-gtags helm-descbinds ggtags flycheck-pyflakes flycheck-haskell find-file-in-project evil-magit epc disaster company cmake-mode clj-refactor auctex ac-slime ac-math ac-js2 0blayout)))
 '(paradox-automatically-star t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

