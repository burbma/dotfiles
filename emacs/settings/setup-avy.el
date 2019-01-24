(require 'avy)

(setq avy-keys '(?h ?t ?n ?s ?u ?e ?o ?a))

(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "C-:") 'avy-goto-line)

(provide 'setup-avy)
