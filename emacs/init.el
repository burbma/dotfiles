;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

;; Functions (load all files in defuns-dir)
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Setup packages
(require 'setup-package)

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(ac-cider
     avy
     cider
     change-inner
     clj-refactor
     clojure-mode
     conda
     dash
     dockerfile-mode
     ein
     expand-region
     flycheck
     hcl-mode
     helm
     helm-ag
     helm-projectile
     magit
     markdown-mode
     modalka
     multiple-cursors
     org ;; Doesn't seem to install it.
     org-ac
     org-bullets
     ox-gfm
     paredit
     projectile
     smartparens
     smooth-scrolling
     terraform-mode
     vmd-mode ;; npm install -g vmd
     which-key
     yaml-mode
     yasnippet)))

;; Set up appearance early
(require 'appearance)

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; Setup extensions
(require 'setup-avy)
(require 'setup-change-inner)
(require 'setup-clojure)
(require 'setup-css)
(require 'setup-ein)
(require 'setup-expand-region)
(require 'setup-helm)
(require 'setup-helm-projectile)
(require 'setup-imenu)
(require 'setup-latex)
(require 'setup-magit)
(require 'setup-markdown)
(require 'setup-modalka)
;;(require 'setup-multiple-cursors)
(require 'setup-org)
(require 'setup-paredit)
(require 'setup-projectile)
(require 'setup-python)
;;(require 'setup-which-key)
;;(require 'setup-yasnippet)

;; Lets start with a smattering of sanity
(require 'sane-defaults)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Don't swallow command-h (M-h)
(setq mac-pass-command-to-system nil)

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Setup key bindings
(require 'key-bindings)

;; Run at full power please
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))
;; Set modifier keys, font, shell stuff.
(when is-mac
  (require 'mac))

(toggle-frame-fullscreen)

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
