(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq dired-dwim-target t)

(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(require 'dired-x)

(provide 'dired-mode-cfg)
