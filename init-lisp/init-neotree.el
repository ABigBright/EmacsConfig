(require 'neotree)

(remove-hook 'neotree-mode-hook 'evil-mode)
(global-set-key (kbd "<f12>") 'neotree-toggle)
(global-set-key (kbd "<f10>") 'neotree-dir)

(provide 'init-neotree)
