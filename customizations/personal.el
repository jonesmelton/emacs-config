;; line moving
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)


;; rebind meta to command key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; insert javascript object with correct indentation
(fset 'open-object
      "{\C-j\C-n;\C-i\C-p\C-i")

(global-set-key (kbd "M-{") 'open-object)

