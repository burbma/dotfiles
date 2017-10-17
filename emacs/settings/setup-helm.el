(require 'helm)

(helm-mode 1)
(global-set-key (kbd "M-x") 'undefined)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(setq helm-boring-buffer-regexp-list
        '( "*helm"))

(provide 'setup-helm)
