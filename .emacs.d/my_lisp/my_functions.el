; Indents the buffer according to the current mode
(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key "\C-x\\" 'indent-buffer)
