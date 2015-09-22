(require 'haskell-mode)
(require 'haskell-process)
; Required in order to use keybindings for haskell processes
; such as C-c C-l for launching the Haskell repl.
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
; Chooses the third option in Haskell mode for indentation:
; https://github.com/haskell/haskell-mode/wiki/Indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
