(require 'change-inner)

(defun modalka-change-inner (arg)
  (interactive "P")
  (change-inner arg)
  (if modalka-global-mode
      (modalka-global-mode 0)))

(defun modalka-change-outer (arg)
  (interactive "P")
  (change-outer arg)
  (if modalka-global-mode
      (modalka-global-mode 0)))

(global-set-key (kbd "M-i") 'modalka-change-inner)
(global-set-key (kbd "M-o") 'modalka-change-outer)

(provide 'setup-change-inner)
