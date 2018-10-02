;; helm plugin config
(add-to-list 'load-path "~/.emacs.d/my-plugin/helm/helm-master/")
(require 'helm-config)
;; helm buffer-list replace the default buffer-list
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "<f5>") 'helm-find-files)

(provide 'init-helmcfg)
