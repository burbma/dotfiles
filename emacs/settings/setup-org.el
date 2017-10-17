;; I like to see an outline of pretty bullets instead of a list of asterisks.
(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode t)))


;; I like seeing a little downward-pointing arrow instead of the usual ellipsis
;; (...) that org displays when there’s stuff under a header.
(setq org-ellipsis "⤵")


;; Use syntax highlighting in source blocks while editing.
(setq org-src-fontify-natively t)


;; Make TAB act as if it were issued in a buffer of the language’s major mode.
(setq org-src-tab-acts-natively t)


;; When editing a code snippet, use the current window rather than popping open
;; a new one (which shows the same information).
(setq org-src-window-setup 'current-window)


;; Store my org files in ~/org, define the location of an index file (my main
;; todo list), and archive finished tasks in ~/org/archive.org.
(setq org-directory "~/org")

(defun org-file-path (filename)
  "Return the absolute address of an org file, given its relative name."
  (concat (file-name-as-directory org-directory) filename))

(setq org-index-file (org-file-path "index.org"))
(setq org-archive-location
      (concat (org-file-path "archive.org") "::* From %s"))


;; I store all my todos in ~/org/index.org, so I’d like to derive my agenda from
;; there.
(setq org-agenda-files (list org-index-file))


;; Hitting C-c C-x C-s will mark a todo as done and move it to an appropriate
;; place in the archive.
(defun mark-done-and-archive ()
  "Mark the state of an org-mode item as DONE and archive it."
  (interactive)
  (org-todo 'done)
  (org-archive-subtree))

(define-key org-mode-map (kbd "C-c C-x C-s") 'mark-done-and-archive)


;; Record the time that a todo was archived.
(setq org-log-done 'time)


;; Bind a few handy keys.
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)


;; Hit C-c i to quickly open up my todo list.
(defun open-index-file ()
  "Open the master org TODO list."
  (interactive)
  (find-file org-index-file)
  (flycheck-mode -1)
  (end-of-buffer))

(global-set-key (kbd "C-c i") 'open-index-file)


;; Hit C-c n to quickly open up a capture template for a new todo.
(defun org-capture-todo ()
  (interactive)
  (org-capture :keys "t"))

(global-set-key (kbd "C-c n") 'org-capture-todo)


;;Allow export to markdown and beamer (for presentations).
(require 'ox-md)
(require 'ox-beamer)
(require 'ox-gfm)


;; Allow babel to evaluate Emacs lisp, Python, Clojure, or Gnuplot code.
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (clojure . t)
   (gnuplot . t)))


;; Don’t ask before evaluating code blocks.
(setq org-confirm-babel-evaluate nil)


;; Translate regular ol’ straight quotes to typographically-correct curly quotes
;; when exporting.
(setq org-export-with-smart-quotes t)


;; Don’t include a footer with my contact and publishing information at the
;; bottom of every exported HTML document.
(setq org-html-postamble nil)


;; I want to produce PDFs with syntax highlighting in the code. The best way to
;; do that seems to be with the minted package, but that package shells out to
;; pygments to do the actual work. pdflatex usually disallows shell commands;
;; this enables that.
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))


;; Include the minted package in all of my LaTeX exports.
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)
(provide 'setup-org)
