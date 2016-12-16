;; Use rainbow delimiters and identifiers in clojure
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-identifiers-mode)

;; Include emacs clojure refactoring tools
(require 'clj-refactor)

(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))

;; Hooks clojure with refactoring and yas minor mode
(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
