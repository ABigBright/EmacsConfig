(require 'evil-leader)

(global-evil-leader-mode 1)

;; key binding config
(evil-leader/set-key
  "ff" 'counsel-find-file
  "fr" 'recentf-open-files
  "bs" 'ivy-switch-buffer
  "jd" 'helm-gtags-find-tag
  "jr" 'helm-gtags-find-rtag
  "js" 'helm-gtags-find-symbol
  "jf" 'helm-gtags-find-files
  "ja" 'helm-gtags-dwim
  "bk" 'kill-buffer)

(provide 'evil-leader-cfg)
