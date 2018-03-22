(require 'clojure-mode)

(require 'clj-refactor)
(clj-refactor-mode 1)
;; This choice of keybinding leaves cider-macroexpand-1 unbound
;; (cljr-add-keybindings-with-prefix "C-c C-m")

(require 'cider)
(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-repl-display-in-current-window t)
(setq cider-overlays-use-font-lock t)

(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))

(put-clojure-indent 's/fdef 1)
(put-clojure-indent 'compj/context 1)

(define-key clojure-mode-map (kbd "C-:") nil)

(provide 'setup-clojure)
