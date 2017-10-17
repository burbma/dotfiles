(require 'paredit)

(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)

;; override the default keybindings in paredit
(eval-after-load 'paredit
 '(progn
    (define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-square)
    (define-key paredit-mode-map (kbd "M-{") 'paredit-wrap-curly)
    ;; (define-key paredit-mode-map (kbd "M-<") 'paredit-wrap-angled)
    (define-key paredit-mode-map (kbd "M-p") 'paredit-splice-sexp-killing-backward)
    (define-key paredit-mode-map (kbd "M-n") 'paredit-splice-sexp-killing-forward)
    (define-key paredit-mode-map (kbd "C-<right>") 'paredit-forward-slurp-sexp)
    (define-key paredit-mode-map (kbd "C-M-<left>") 'paredit-backward-slurp-sexp)
    (define-key paredit-mode-map (kbd "C-<left>") 'paredit-forward-barf-sexp)
    (define-key paredit-mode-map (kbd "C-M-<right>") 'paredit-backward-barf-sexp)))

(provide 'setup-paredit)
