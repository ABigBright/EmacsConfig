;; bucause "smartparen-global-mode" is autoload, so we didn't require the "smartparen-config"
;;(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
;;(add-hook 'js-mode-hook 'smartparens-mode)
;;(add-hook 'c-mode-hook 'smartparens-mode)
;;(add-hook 'c++-mode-hook 'smartparens-mode)
;;(add-hook 'lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t) 

(provide 'init-smartparen)
