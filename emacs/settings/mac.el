(setq ns-function-modifier 'hyper)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(global-set-key (kbd "s-q") nil)
(global-set-key (kbd "s-k") nil)

(require-package 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(provide 'mac)
