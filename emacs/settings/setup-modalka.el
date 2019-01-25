(require 'modalka)

(global-set-key (kbd "<escape>") 'modalka-global-mode)
(modalka-define-kbd "i" "<escape>")

(modalka-global-mode 1)
;;(add-to-list 'modalka-excluded-modes 'cider-repl-mode)
(add-to-list 'modalka-excluded-modes 'doc-view-mode)
(add-to-list 'modalka-excluded-modes 'ediff-mode)
(add-to-list 'modalka-excluded-modes 'git-commit-mode)
(add-to-list 'modalka-excluded-modes 'git-rebase-mode)
(add-to-list 'modalka-excluded-modes 'magit-popup-mode)
(add-to-list 'modalka-excluded-modes 'magit-status-mode)
(add-to-list 'modalka-excluded-modes 'dired-mode)
;;(add-to-list 'modalka-excluded-modes 'text-mode)
(setq modalka-cursor-type 'box)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key map. 'kb' indicates you'll find the setting in key-bindings.el

;; Navigation
(modalka-define-kbd "<up>" "C-<up>") ;; Move the screen but not point
(modalka-define-kbd "<down>" "C-<down>") ;; Same
(modalka-define-kbd "<left>" "M-<left>") ;; Same
(modalka-define-kbd "<right>" "M-<right>") ;; Same
(modalka-define-kbd "f" "C-f") ;; Move point forward a char
(modalka-define-kbd "b" "C-b") ;; Move point back a char
(modalka-define-kbd "n" "C-n") ;; Move point to next line
(modalka-define-kbd "p" "C-p") ;; Move point to previous line
(modalka-define-kbd "a" "C-a") ;; Beginning of line
(modalka-define-kbd "e" "C-e") ;; End of line
(modalka-define-kbd "s" "C-s") ;; Search
(modalka-define-kbd "v" "C-v") ;; Down a screenful
(modalka-define-kbd "," "C-,") ;; helm-imenu (jump to def)
(modalka-define-kbd "c p s s" "C-c p s s") ;; Projectile ag
(modalka-define-kbd "u SPC" "C-u C-SPC") ;; Pop mark? doesn't work
(modalka-define-kbd "." "M-.") ;; Helm find definitions
(modalka-define-kbd "<" "M-<") ;; Beginning of buffer
(modalka-define-kbd ">" "M->") ;; End of buffer
(modalka-define-kbd ";" "C-;") ;; (avy-goto-char)
(modalka-define-kbd ":" "C-:") ;; (avy-goto-char-2)

;; Text mutation
(modalka-define-kbd "k" "C-k") ;; Kill to end of line
(modalka-define-kbd "y" "C-y") ;; Yank
(modalka-define-kbd "d" "C-d") ;; Forward delete
(modalka-define-kbd "h" "C-h") ;; kb (paredit-backward-delete)
(modalka-define-kbd "N" "C-S-<down>") ;; kb (move-line-down)
(modalka-define-kbd "P" "C-S-<up>") ;; kb (move-line-up)
(modalka-define-kbd "m" "C-m") ;; New line, enter
(modalka-define-kbd "w" "C-w") ;; Kill region
(modalka-define-kbd "\\" "C-M-\\") ;; Indent region
(modalka-define-kbd "x d" "C-S-d") ;; kb (duplicate-current-line)
(modalka-define-kbd "x o" "C-x C-o")
(modalka-define-kbd "x r t" "C-x r t")
(modalka-define-kbd "x r d" "C-x r d")
(modalka-define-kbd ")" "C-)") ;; (paredit-forward-slurp-sexp)
(modalka-define-kbd "(" "C-(") ;; (paredit-backward-slurp-sexp)
(modalka-define-kbd "}" "C-}") ;; (paredit-forward-barf-sexp)
(modalka-define-kbd "{" "C-{") ;; (paredit-backward-barf-sexp)
(modalka-define-kbd "0" ")") ;; (paredit-close-round)
(modalka-define-kbd "6" "M-^")
(modalka-define-kbd "c p r" "C-c p r") ;; (projectile-replace)
(modalka-define-kbd "c i" "M-i") ;; (change-inner)
(modalka-define-kbd "c o" "M-o") ;; (change-outer
;; (modalka-define-kbd "C C" "C-S-c C-S-c") ;; (mc/edit-lines)
;; (modalka-define-kbd "<" "C-<") ;; (mc/mark-previous-like-this)
;; (modalka-define-kbd ">" "C->") ;; (mc/mark-next-like-this)
;; (modalka-define-kbd "c <" "C-c C-<") ;; (mc/mark-all-like-this)

;; Buffers
(modalka-define-kbd "c p f" "C-c p f") ;; (helm-projectile-find-file)
(modalka-define-kbd "c p p" "C-c p p") ;; (helm-projectile-switch-project)
(modalka-define-kbd "c p k" "C-c p k") ;; (helm-projectile-kill-buffers)
(modalka-define-kbd "x b" "C-x b")
(modalka-define-kbd "x k" "C-x k")
(modalka-define-kbd "x s" "C-x M-s") ;; kb (save-all)
(modalka-define-kbd "'" "C-'") ;; kb (mode-line-other-buffer)
(modalka-define-kbd "x f" "C-x C-f")
(modalka-define-kbd "x j" "C-x C-j") ;; (dired-jump)

;; Windows
(modalka-define-kbd "x 0" "C-x 0")
(modalka-define-kbd "x 1" "C-x 1")
(modalka-define-kbd "x 2" "C-x 2")
(modalka-define-kbd "x 3" "C-x 3")
(modalka-define-kbd "-" "C-x -") ;; kb (rotate-windows)
(modalka-define-kbd "x -" "C-x C--") ;; kb (toggle-window-split)
(modalka-define-kbd "o" "C-x o")

;; For command repition
;; I've commented these out in preference of using 0 and 9 for paredit
;; (modalka-define-kbd "0" "C-0")
;; (modalka-define-kbd "9" "C-9")
(modalka-define-kbd "1" "C-1")
(modalka-define-kbd "2" "C-2")
(modalka-define-kbd "3" "C-3")
(modalka-define-kbd "4" "C-4")
(modalka-define-kbd "5" "C-5")
;; (modalka-define-kbd "6" "C-6")
(modalka-define-kbd "7" "C-7")
(modalka-define-kbd "8" "C-8")

;; Other
(modalka-define-kbd "SPC" "C-SPC")
(modalka-define-kbd "g" "C-g")
(modalka-define-kbd "x g" "C-x g") ;; (magit-status-fullscreen)
(modalka-define-kbd "/" "C-/") ;; Undo
(modalka-define-kbd "x r q" "C-x r q") ;; kb (save-buffers-kill-terminal)
(modalka-define-kbd "?" "C-?")
(modalka-define-kbd "r" "C-M-x")
(modalka-define-kbd "x e" "C-x C-e")
(modalka-define-kbd "@" "C-@") ;; (er/expand-region)

;; Useful for EIN
(modalka-define-kbd "c a" "C-c C-a")
(modalka-define-kbd "c b" "C-c C-b")
(modalka-define-kbd "c c" "C-c C-c")
(modalka-define-kbd "c k" "C-c C-k")
(modalka-define-kbd "c r" "C-c C-r")
(modalka-define-kbd "c s" "C-c C-s")
(modalka-define-kbd "c t" "C-c C-t")
(modalka-define-kbd "c x" "C-c C-x")
(modalka-define-kbd "c z" "C-c C-z")

(provide 'setup-modalka)
