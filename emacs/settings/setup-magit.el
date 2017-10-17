(require 'magit)

(defun magit-status-fullscreen (prefix)
  (interactive "P")
  (magit-status)
  (unless prefix
    (delete-other-windows)))

(global-set-key (kbd "C-x g") 'magit-status-fullscreen)
;; (global-set-key (kbd "C-x g") 'magit-status)

(defun magit-key-mode--add-default-options (arguments)
  (let* ((mode (car arguments))
         (options (cadr arguments))
         (default-options (cdr (assoc mode my/magit-default-options))))
    (list mode (delete-dups (delq nil (append options default-options))))))

(setq my/magit-default-options
      `(
        (pulling "--rebase")
        ))

(advice-add 'magit-key-mode :filter-args #'magit-key-mode--add-default-options)

(provide 'setup-magit)
