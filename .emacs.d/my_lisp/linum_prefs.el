;; Hoyle Magic
;; For all the juiciness
;; https://github.com/triclops200/.emacs.d/blob/master/lisp/my-functions.el

(defvar my-linum-current-line-number 0)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((test2 (1+ (- line-number my-linum-current-line-number))))
    (propertize
     (format "%3d" (cond ((<= test2 0) (1- test2))
                         ((> test2 0)  test2)))
     'face 'linum)))

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)
