;; ggtags-mode require
;;(require 'ggtags)
;;(add-hook 'c-mode-common-hook
;;	  (lambda ()
;;	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;	                    (ggtags-mode 1))))
;; ggtags short key config
;;(define-key ggtags-mode-map (kbd "C-x g d") 'ggtags-find-definition)
;;(define-key ggtags-mode-map (kbd "C-x g c") 'ggtags-find-reference)
;;(define-key ggtags-mode-map (kbd "C-x g w") 'ggtags-find-tag-dwim)
;;(define-key ggtags-mode-map (kbd "C-x g f") 'ggtags-find-file)
;;(define-key ggtags-mode-map (kbd "C-x g r") 'ggtags-find-tag-regexp)
;;(define-key ggtags-mode-map (kbd "C-x g t") 'ggtags-create-tags)

(provide 'init-ggtags)
