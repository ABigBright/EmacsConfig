;; abbrev-mode config
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
											;; config the brightqin's abbrev
											("0briq" "brightqin")
											))


;; dired-mode config
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x)


;; evil-leader config
(require 'evil-leader)
(global-evil-leader-mode 1)


;; command-log-mode config
(require 'command-log-mode)
(add-hook 'emacs-lisp-mode-hook 'command-log-mode)


;; config company mode
(global-company-mode t)
(setq-default company-idle-delay 0.08)
(setq-default company-minimum-prefix-length 2)


;; evil mode config
(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)


;; find file in project config
(if (eq system-type 'windows-nt)
	(setq ffip-find-executable "e:\\\\tmp\\\\bin\\\\find"))
;;    (setq ffip-find-executable "d:\\\\Program\\ Files\\ (x86)\\\\GnuWin32\\\\bin\\\\find.exe"))
;;		  "D:\\Program Files (x86)\\GnuWin32\\bin"


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


;; helm plugin config
;;(add-to-list 'load-path "~/.emacs.d/my-plugin/helm/helm-master/")
(require 'helm-config)


;; helm-gtags config
;;(add-to-list 'load-path "~/.emacs.d/elpa/helm-gtags-20170115.2129")
(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
;;(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)


;; hungry delete config
(global-hungry-delete-mode t)


;; js2 mode config
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))


;; config multi-term
(require 'multi-term)
(add-hook 'term-mode-hook
  (lambda ()
  ;; 下面设置multi-term buffer的长度无限
  (setq term-buffer-maximum-size 0)))


;; neotree config
(require 'neotree)
(remove-hook 'neotree-mode-hook 'evil-mode)


;; org-mode config
(require 'org)


;; recent mode config
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 50)


;; short key to open my emacs init file
(defun my-emacs-init-file()
  (interactive)
  (find-file "~/.emacs.d/init-lisp"))


;; bucause "smartparen-global-mode" is autoload, so we didn't require the "smartparen-config"
;;(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
(add-hook 'js-mode-hook 'smartparens-mode)
(add-hook 'c-mode-hook 'smartparens-mode)
(add-hook 'c++-mode-hook 'smartparens-mode)
;;(add-hook 'lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t) 


;; smex plugin config
;;(add-to-list 'load-path "~/.emacs.d/my-plugin/smex")
;;(require 'smex)
;;(smex-initialize)
;; smex key binding
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; this is your old M-x
;;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; swiper config
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;; config the theme
(load-theme 'monokai t)


;; pdf tool config
(pdf-tools-install)
(defun close-linum-mode()
  (interactive)
  (linum-mode -1))
(add-hook 'pdf-view-mode-hook 'close-linum-mode)


;; popwin config
(require 'popwin)
(popwin-mode 1)


(provide 'misc-plugin-cfg)
