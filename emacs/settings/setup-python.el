(require 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)

(require 'conda)
(custom-set-variables
 '(conda-anaconda-home "~/anaconda3"))

(provide 'setup-python)
