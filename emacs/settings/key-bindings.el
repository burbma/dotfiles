;; I don't need to kill emacs that easily
;; the mnemonic is C-x REALLY QUIT
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;; Save all
(global-set-key (kbd "C-x M-s") 'save-all)

;; Transpose stuff with M-t
(global-unset-key (kbd "M-t")) ;; which used to be transpose-words
(global-set-key (kbd "M-t l") 'transpose-lines)
(global-set-key (kbd "M-t w") 'transpose-words)
(global-set-key (kbd "M-t s") 'transpose-sexps)
(global-set-key (kbd "M-t p") 'transpose-params)

;; Do what I mean C-a
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)

;; Duplicate line
(global-set-key (kbd "C-S-d") 'duplicate-current-line)

;; Toggle two most recent buffers
(global-set-key (kbd "C-'") 'mode-line-other-buffer)

;; Run helm-imenu (was...and still is also s-r)
(global-set-key (kbd "C-,") 'helm-imenu)

;; Revert without any fuss
;; (global-set-key (kbd "M-<escape>") (λ (revert-buffer t t)))

;; Line movement
(global-set-key (kbd "C-S-<up>") 'move-line-up)
(global-set-key (kbd "C-S-<down>") 'move-line-down)

;; Yank and indent
(global-set-key (kbd "C-S-y") 'yank-unindented)

;; Set backspace, reassign help and mark paragraph
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'paredit-backward-delete)
(global-set-key (kbd "M-h") 'paredit-backward-kill-word)
(keyboard-translate ?\C-h ?\C-?)

;; Window switching
(global-set-key (kbd "C-x -") 'rotate-windows)
;;(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x C--") 'toggle-window-split)
;;(global-unset-key (kbd "C-x C-+")) ;; don't zoom like this
(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there)
(global-set-key (kbd "C-x 2") 'split-window-below-and-move-there)

;; Scrolling window
(global-set-key (kbd "C-<up>") (lambda () (interactive) (scroll-down 1)))
(global-set-key (kbd "C-<down>") (lambda () (interactive) (scroll-up 1)))
(global-set-key (kbd "M-<left>") (lambda () (interactive) (scroll-right 2)))
(global-set-key (kbd "M-<right>") (lambda () (interactive) (scroll-left 2)))

;; Dired jump
(global-set-key (kbd "C-x C-j") 'dired-jump)

(provide 'key-bindings)
