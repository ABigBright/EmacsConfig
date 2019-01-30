
;; package config
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
;;  (add-to-list 'package-archives (cons "melpa" (concat proto ":elpa.emacs-china.org/melpa")) t)
  (add-to-list 'package-archives (cons "melpa" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
;;    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.emacs-china.org/gnu/") ))))
    (add-to-list 'package-archives '("gnu" . (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/
")))))
(package-initialize)

(require 'cl)

;; add whatever pkg you want here
(defvar briq-packages '(
		   company
		   monokai-theme
		   hungry-delete
		   swiper
		   counsel
		   smartparens
		   js2-mode
		   find-file-in-project
		   multi-term
		   ace-jump-mode
		   async
		   ggtags
		   evil
		   helm-gtags
		   solarized-theme
		   helm
		   helm-core
		   ivy
		   undo-tree
		   cl-lib-highlight
		   flymake-cppcheck
		   package+
		   dash
		   flymake-easy
		   goto-chg
		   popwin
		   command-log-mode
		   pdf-tools
		   evil-leader
		   evil-nerd-commenter
		   imenu-list
		   cedet
		   powerline
		   powerline-evil
		   fzf
		   airline-themes
		   ) "default pkg")

;; check the package in briq-packages is installed, if have one more package is not install, return nil or t
(defun briq-packages-installed-p()
  (loop for pkg in briq-packages
	when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

;; look up the not installed package, then install it
(unless (briq-packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg briq-packages)
      (when (not (package-installed-p pkg))
		(package-install pkg))))

(provide 'init-pkg)

