;; short key to open my emacs init file
(defun my-emacs-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<C-f3>") 'my-emacs-init-file)

(provide 'init-sktif)
