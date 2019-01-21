
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/init-lisp/customize-cfg.el")
(load-file custom-file)

;; ----------------------------------------------------------------------------------
;; my customized emacs part
;; ----------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/init-lisp/")
(require 'init-misc)
(require 'init-sktif)
(require 'init-pkg)
;;(require 'init-smex)
(require 'init-helmcfg)
(require 'init-helmgtags)
(require 'init-company)
(require 'init-ffip)
(require 'init-multerm)
(require 'init-acejump)
(require 'init-ggtags)
(require 'init-recentf)
(require 'init-org)
(require 'init-browser)
(require 'init-theme)
(require 'help-sk)
(require 'init-hungrydel)
(require 'init-swiper)
(require 'init-smartparen)
(require 'init-js)
(require 'init-evil)
(require 'popwin-cfg)
(require 'abbrev-cfg)
(require 'dired-mode-cfg)
(require 'init-neotree)
(require 'init-command-log)
(require 'pdf-tool)

