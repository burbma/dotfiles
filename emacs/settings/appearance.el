(setq font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; Don't beep. Don't visible-bell (fails on el capitan). Just blink the modeline on errors.

(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

;; Load a cool theme!
(defun use-default-theme ()
  (interactive)
  (load-theme 'default-black)
  (set-frame-font "-*-Source Code Pro-light-normal-normal-*-14-*-*-*-m-0-iso10646-1"))

(use-default-theme)

;; Highlight current line
(global-hl-line-mode 1)

;; Don't defer screen updates when performing operations
(setq redisplay-dont-pause t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1)
  (setq-default cursor-type 'bar)
  (setq-default cursor-in-non-selected-windows nil))


(defmacro rename-modeline (package-name mode new-name)
  `(eval-after-load ,package-name
     '(defadvice ,mode (after rename-modeline activate)
        (setq mode-name ,new-name))))

(rename-modeline "clojure-mode" clojure-mode "clj")

(provide 'appearance)
