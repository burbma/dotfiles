(setq ns-function-modifier 'hyper)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(global-set-key (kbd "s-q") nil)
(global-set-key (kbd "s-k") nil)

;; mac friendly font
(when window-system
  ;;(setq mmb90/default-font "-*-Monaco-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")
  (setq mmb90/default-font "-*-Source Code Pro-light-normal-normal-*-16-*-*-*-m-0-iso10646-1")
  ;;(setq mmb90/default-font "-*-Courier-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")
  (set-face-attribute 'default nil :font mmb90/default-font))

(require-package 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(provide 'mac)
