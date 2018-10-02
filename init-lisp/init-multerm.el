;; config multi-term
(require 'multi-term)
(add-hook 'term-mode-hook
  (lambda ()
  ;; 下面设置multi-term buffer的长度无限
  (setq term-buffer-maximum-size 0)))

;; eshell config
(global-set-key (kbd "<C-f5>") 'multi-term)

(provide 'init-multerm)
