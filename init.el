
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
(require 'init-pkg)
(require 'misc-plugin-cfg)
(require 'keybinding-cfg)

