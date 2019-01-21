;; close tool bar
(tool-bar-mode -1)
;; close scroll bar
(scroll-bar-mode -1)
;; close welcome page
(setq inhibit-splash-screen t)
;; auto indent
(setq electric-indent-mode t)
;; delete the selections
(delete-selection-mode 1)
;; fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; highlight the current line
(global-hl-line-mode 1)
;; display line number
(global-linum-mode 1)
;; nobackup file
(setq-default make-backup-files nil)
;; config () match
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; config font
;;(set-frame-font "Source Code Pro-12")
;; config tab width
(setq-default tab-width 4)
;; config quick index find function and variable
(global-set-key (kbd "C-h C-f") 'find-function) 
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;; config this for forbid the slow move in chinese environment
;; ============================================================
;; Setting English Font
;;(set-face-attribute 'default nil :font "Source Code Pro-11")

;; Setting Chinese Font
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;  (set-fontset-font (frame-parameter nil 'font)
;;					charset
;;					(font-spec :family "Source Code Pro" :size 16)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight semibold :height 100 :width normal)))))

(provide 'init-misc)
