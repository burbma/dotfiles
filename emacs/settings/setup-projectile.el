(require 'projectile)

(projectile-global-mode)
(setq projectile-use-git-grep 1)
(setq projectile-mode-line " Projectile")

;; (add-hook 'find-file-hook
;;           (lambda ()
;;             (when (file-remote-p default-directory)
;;               (setq-local projectile-mode-line "Projectile"))))

(provide 'setup-projectile)
