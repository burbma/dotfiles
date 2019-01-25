(require 'projectile)

(projectile-global-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-use-git-grep 1)
(setq projectile-mode-line " Projectile")

(provide 'setup-projectile)
