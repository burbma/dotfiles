(require 'magit)

(defun magit-status-fullscreen (prefix)
  (interactive "P")
  (magit-status)
  (unless prefix
    (delete-other-windows)))

(global-set-key (kbd "C-x g") 'magit-status-fullscreen)
;; (global-set-key (kbd "C-x g") 'magit-status)

(defun magit-key-mode--add-default-options (arguments)
  (if (eq (car arguments) 'pulling)
      (list 'pulling (list "--rebase"))
    arguments))
(advice-add 'magit-key-mode :filter-args #'magit-key-mode--add-default-options)

(provide 'setup-magit)
