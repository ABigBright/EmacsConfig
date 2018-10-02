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
;;(set-frame-font "Source Code Pro-11")
;; config tab width
(setq-default tab-width 4)
;; config quick index find function and variable
(global-set-key (kbd "C-h C-f") 'find-function) 
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;; config this for forbid the slow move in chinese environment
;; ============================================================
;; Setting English Font
(set-face-attribute 'default nil :font "Source Code Pro-11")
;; Setting Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
					charset
					(font-spec :family "Microsoft Yahei" :size 16)))

(provide 'init-misc)
