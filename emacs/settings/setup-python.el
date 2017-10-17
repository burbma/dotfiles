(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(require 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)

;; Don't forget to run M-x jedi:install-server

(provide 'setup-python)
