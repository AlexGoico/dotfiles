;; Include yasnippet
(require 'yasnippet)

;; yasnippet globally
(yas-global-mode 1)

;; Removes heuristic completion at the terminal
(add-hook 'term-mode-hook (lambda () (yas-minor-mode -1)))
