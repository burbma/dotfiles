(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;; Don't forget to run M-x jedi:install-server

(require 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)

(require 'conda)
(custom-set-variables
 '(conda-anaconda-home "~/anaconda3"))

(provide 'setup-python)
