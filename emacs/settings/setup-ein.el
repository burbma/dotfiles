(require 'ein)

(setq ein:use-auto-complete t)

(add-hook 'ein:notebook-multilang-mode-hook
          (lambda ()
            (remove-hook 'before-save-hook 'whitespace-cleanup)))

(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

(local-unset-key (kbd "C-c i"))

(provide 'setup-ein)
