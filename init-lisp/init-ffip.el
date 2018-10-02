;; find file in project config
(if (eq system-type 'windows-nt)
	(setq ffip-find-executable "e:\\\\tmp\\\\bin\\\\find"))
;;    (setq ffip-find-executable "d:\\\\Program\\ Files\\ (x86)\\\\GnuWin32\\\\bin\\\\find.exe"))
;;		  "D:\\Program Files (x86)\\GnuWin32\\bin"
(global-set-key (kbd "<f6>") 'find-file-in-project)
		
(provide 'init-ffip)
