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

;; Completion that uses many different methods to find options.
;;(global-set-key (kbd "C-.") 'hippie-expand-no-case-fold)
;;(global-set-key (kbd "C-:") 'hippie-expand-lines)
;;(global-set-key (kbd "C-,") 'completion-at-point)

;;(require 'misc)
;;(global-set-key (kbd "s-.") 'copy-from-above-command)

;; Expand region (increases selected region by semantic units)
;;(global-set-key (if is-mac (kbd "C-@") (kbd "C-'")) 'er/expand-region)

;; Experimental multiple-cursors
;;(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;;(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
;;(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)

;; Mark additional regions matching current region
;;(global-set-key (kbd "M-æ") 'mc/mark-all-dwim)
;;(global-set-key (kbd "C-å") 'mc/mark-previous-like-this)
;;(global-set-key (kbd "C-æ") 'mc/mark-next-like-this)
;;(global-set-key (kbd "C-Æ") 'mc/mark-more-like-this-extended)
;;(global-set-key (kbd "M-å") 'mc/mark-all-in-region)

;; Symbol and word specific mark-more
;;(global-set-key (kbd "s-æ") 'mc/mark-next-word-like-this)
;;(global-set-key (kbd "s-å") 'mc/mark-previous-word-like-this)
;;(global-set-key (kbd "M-s-æ") 'mc/mark-all-words-like-this)
;;(global-set-key (kbd "s-Æ") 'mc/mark-next-symbol-like-this)
;;(global-set-key (kbd "s-Å") 'mc/mark-previous-symbol-like-this)
;;(global-set-key (kbd "M-s-Æ") 'mc/mark-all-symbols-like-this)

;; Extra multiple cursors stuff
;;(global-set-key (kbd "C-~") 'mc/reverse-regions)
;;(global-set-key (kbd "M-~") 'mc/sort-regions)
;;(global-set-key (kbd "H-~") 'mc/insert-numbers)

;;(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; Set anchor to start rectangular-region-mode
;;(global-set-key (kbd "H-SPC") 'set-rectangular-region-anchor)

;; Replace rectangle-text with inline-string-rectangle
;;(global-set-key (kbd "C-x r t") 'inline-string-rectangle)

;; Quickly jump in document with ace-jump-mode
;;(define-key global-map (kbd "C-ø") 'ace-jump-mode)

;; Perform general cleanup.
;;(global-set-key (kbd "C-c n") 'cleanup-buffer)
;;(global-set-key (kbd "C-c C-n") 'cleanup-buffer)
;;(global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

;; M-i for back-to-indentation
;;(global-set-key (kbd "M-i") 'back-to-indentation)

;; Turn on the menu bar for exploring new modes
;;(global-set-key (kbd "C-<f10>") 'menu-bar-mode)

;; Use shell-like backspace C-h, rebind help to F1
;;(define-key key-translation-map [?\C-h] [?\C-?])
;;(global-set-key (kbd "<f1>") 'help-command)

;;(global-set-key (kbd "M-h") 'kill-region-or-backward-word)

;; Interactive selective display
;;(global-set-key (kbd "C-x $") 'inc-selective-display)

;; Change next underscore with a camel case
;;(global-set-key (kbd "C-c C--") 'replace-next-underscore-with-camel)
;;(global-set-key (kbd "M-s M--") 'snakeify-current-word)

;; Change word separators
;;(global-unset-key (kbd "C-x +")) ;; used to be balance-windows
;;(global-set-key (kbd "C-x + -") (λ (replace-region-by 's-dashed-words)))
;;(global-set-key (kbd "C-x + _") (λ (replace-region-by 's-snake-case)))
;;(global-set-key (kbd "C-x + c") (λ (replace-region-by 's-lower-camel-case)))
;;(global-set-key (kbd "C-x + C") (λ (replace-region-by 's-upper-camel-case)))

;; Killing text
;;(global-set-key (kbd "C-S-k") 'kill-and-retry-line)
;;(global-set-key (kbd "C-w") 'kill-region-or-backward-word)
;;(global-set-key (kbd "C-c C-w") 'kill-to-beginning-of-line)

;; Make shell more convenient, and suspend-frame less
;;(global-set-key (kbd "C-z") 'shell)
;;(global-set-key (kbd "C-x M-z") 'suspend-frame)

;; Zap to char
;;(global-set-key (kbd "M-z") 'zap-up-to-char)
;;(global-set-key (kbd "s-z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-up-to-char -1 char)))

;;(global-set-key (kbd "M-Z") (lambda (char) (interactive "cZap to char: ") (zap-to-char 1 char)))
;;(global-set-key (kbd "s-Z") (lambda (char) (interactive "cZap to char backwards: ") (zap-to-char -1 char)))

;; iy-go-to-char - like f in Vim
;;(global-set-key (kbd "M-m") 'jump-char-forward)
;;(global-set-key (kbd "M-M") 'jump-char-backward)
;;(global-set-key (kbd "s-m") 'jump-char-backward)

;; vim's ci and co commands
;;(global-set-key (kbd "M-I") 'change-inner)
;;(global-set-key (kbd "M-O") 'change-outer)

;;(global-set-key (kbd "s-i") 'copy-inner)
;;(global-set-key (kbd "s-o") 'copy-outer)

;; Create new frame
;;(define-key global-map (kbd "C-x C-n") 'make-frame-command)

;; Jump to a definition in the current file. (This is awesome)
;;(global-set-key (kbd "C-x C-i") 'ido-imenu)

;; File finding
;;(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
;;(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
;;(global-set-key (kbd "C-x C-p") 'find-or-create-file-at-point)
;;(global-set-key (kbd "C-x M-p") 'find-or-create-file-at-point-other-window)
;;(global-set-key (kbd "C-c y") 'bury-buffer)
;;(global-set-key (kbd "C-c r") 'revert-buffer)
;;(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;(global-set-key (kbd "s-y") 'bury-buffer)

;; Edit file with sudo
;;(global-set-key (kbd "M-s e") 'sudo-edit)

;; Copy file path to kill ring
;;(global-set-key (kbd "C-x M-w") 'copy-current-file-path)

;; Add region to *multifile*
;;(global-set-key (kbd "C-!") 'mf/mirror-region-in-multifile)

;; Indentation help
;;(global-set-key (kbd "M-j") (λ (join-line -1)))

;; Help should search more than just commands
;;(global-set-key (kbd "<f1> a") 'apropos)

;; Should be able to eval-and-replace anywhere.
;;(global-set-key (kbd "C-c C-e") 'eval-and-replace)
;;(global-set-key (kbd "M-s-e") 'eval-and-replace)

;; Navigation bindings
;;(global-set-key [remap goto-line] 'goto-line-with-feedback)

;;(global-set-key (kbd "<prior>") 'beginning-of-buffer)
;;(global-set-key (kbd "<home>") 'beginning-of-buffer)
;;;(global-set-key (kbd "<next>") 'end-of-buffer)
;;(global-set-key (kbd "<end>") 'end-of-buffer)
;;(global-set-key (kbd "M-p") 'backward-paragraph)
;;(global-set-key (kbd "M-n") 'forward-paragraph)

;;(global-set-key (kbd "M-<up>") 'smart-up)
;;(global-set-key (kbd "M-<down>") 'smart-down)
;;(global-set-key (kbd "M-<left>") 'smart-backward)
;;(global-set-key (kbd "M-<right>") 'smart-forward)

;; Webjump let's you quickly search google, wikipedia, emacs wiki
;;(global-set-key (kbd "C-x g") 'webjump)
;;(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

;; Completion at point
;;(global-set-key (kbd "C-<tab>") 'completion-at-point)

;; Like isearch, but adds region (if any) to history and deactivates mark
;;(global-set-key (kbd "C-s") 'isearch-forward-use-region)
;;(global-set-key (kbd "C-r") 'isearch-backward-use-region)

;; Like isearch-*-use-region, but doesn't mess with the active region
;;(global-set-key (kbd "C-S-s") 'isearch-forward)
;;(global-set-key (kbd "C-S-r") 'isearch-backward)

;; Move more quickly
;;(global-set-key (kbd "C-S-n") (λ (ignore-errors (next-line 5))))
;;(global-set-key (kbd "C-S-p") (λ (ignore-errors (previous-line 5))))
;;(global-set-key (kbd "C-S-f") (λ (ignore-errors (forward-char 5))))
;;(global-set-key (kbd "C-S-b") (λ (ignore-errors (backward-char 5))))

;;(global-set-key (kbd "H-*") 'beginning-of-buffer) ;; H-p
;;(global-set-key (kbd "H-n") 'end-of-buffer)

;; Convenience on ThinkPad Keyboard: Use back/forward as pg up/down
;;(global-set-key (kbd "<XF86Back>") 'scroll-down)
;;(global-set-key (kbd "<XF86Forward>") 'scroll-up)
;;(global-set-key (kbd "<XF86WakeUp>") 'beginning-of-buffer)

;; Query replace regex key binding
;;(global-set-key (kbd "M-&") 'query-replace-regexp)

;; Yank selection in isearch
;;(define-key isearch-mode-map (kbd "C-o") 'isearch-yank-selection)

;; Comment/uncomment block
;;(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
;;(global-set-key (kbd "C-c u") 'uncomment-region)

;; Eval buffer
;;(global-set-key (kbd "C-c C-k") 'eval-buffer)

;; Create scratch buffer
;;(global-set-key (kbd "C-c b") 'create-scratch-buffer)

;; Move windows, even in org-mode
;;(global-set-key (kbd "<s-right>") 'windmove-right)
;;(global-set-key (kbd "<s-left>") 'windmove-left)
;;(global-set-key (kbd "<s-up>") 'windmove-up)
;;(global-set-key (kbd "<s-down>") 'windmove-down)

;; Magit
;;(global-set-key (kbd "C-x m") 'magit-status-fullscreen)
;;(autoload 'magit-status-fullscreen "magit")

;; Clever newlines
;;(global-set-key (kbd "C-o") 'open-line-and-indent)
;;(global-set-key (kbd "<C-return>") 'open-line-below)
;;(global-set-key (kbd "<C-S-return>") 'open-line-above)
;;(global-set-key (kbd "<M-return>") 'new-line-dwim)

;; Duplicate region
;;(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

;; Fold the active region
;;(global-set-key (kbd "C-c C-f") 'fold-this-all)
;;(global-set-key (kbd "C-c C-F") 'fold-this)
;;(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)

;; Toggle quotes
;;(global-set-key (kbd "C-\"") 'toggle-quotes)

;; Sorting
;;(global-set-key (kbd "M-s l") 'sort-lines)

;; Increase number at point (or other change based on prefix arg)
;;(global-set-key (kbd "C-+") 'change-number-at-point)
;;(global-set-key (kbd "C-?") 'subtract-number-at-point)
;;(eval-after-load 'undo-tree '(define-key undo-tree-map (kbd "C-?") nil))

;; Browse the kill ring
;;(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; Buffer file functions
;;(global-set-key (kbd "C-x t") 'touch-buffer-file)
;;(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
;;(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

;; Jump from file to containing directory
;;(global-set-key (kbd "C-x C-j") 'dired-jump) (autoload 'dired-jump "dired")
;;(global-set-key (kbd "C-x M-j") '(λ (dired-jump 1)))

;; Easy-mode fullscreen rgrep
;;(global-set-key (kbd "M-s s") 'git-grep-fullscreen)
;;(global-set-key (kbd "M-s S") 'rgrep-fullscreen)

;; Multi-occur
;;(global-set-key (kbd "M-s m") 'multi-occur)
;;(global-set-key (kbd "M-s M") 'multi-occur-in-matching-buffers)

;; Display and edit occurances of regexp in buffer
;;(global-set-key (kbd "C-c o") 'occur)

;; View occurrence in occur mode
;;(define-key occur-mode-map (kbd "v") 'occur-mode-display-occurrence)
;;(define-key occur-mode-map (kbd "n") 'next-line)
;;(define-key occur-mode-map (kbd "p") 'previous-line)

(provide 'key-bindings)
