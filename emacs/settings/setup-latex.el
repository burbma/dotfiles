(require 'smartparens)
(add-hook 'latex-mode-hook 'smartparens-mode)
(add-hook 'LaTeX-mode-hook 'smartparens-mode)
(add-hook 'tex-mode-hook 'smartparens-mode)
(add-hook 'TeX-mode-hook 'smartparens-mode)
(add-hook 'bibtex-mode-hook 'smartparens-mode)

(add-hook 'latex-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'tex-mode-hook 'flyspell-mode)
(add-hook 'TeX-mode-hook 'flyspell-mode)
(add-hook 'bibtex-mode-hook 'flyspell-mode)

;; Automatically parse the file after loading it.
(setq TeX-parse-self t)

;; Always use pdflatex when compiling LaTeX documents. I don’t really have any
;; use for DVIs.
(setq TeX-PDF-mode t)

;; Enable a minor mode for dealing with math (it adds a few useful keybindings),
;; and always treat the current file as the “main” file. That’s intentional,
;; since I’m usually actually in an org document.
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (LaTeX-math-mode)
            (setq TeX-master t)))


(provide 'setup-latex)
