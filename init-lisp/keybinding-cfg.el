;; evil-leader key binding config
(evil-leader/set-key
  "sa" 'counsel-ag 
  "sr" 'counsel-rg 
  "sg" 'counsel-grep 
  "hi" 'my-emacs-init-file 
  "wh" 'windmove-left
  "wl" 'windmove-right
  "wk" 'windmove-up
  "wj" 'windmove-down
  "wc" 'quit-window
  "tL" 'imenu-list-smart-toggle
  "tl" 'helm-semantic-or-imenu
  "fh" 'helm-find-files
  "fz" 'fzf
  "ff" 'counsel-find-file
  "fF" 'find-file-in-project
  "fr" 'recentf-open-files
  "bs" 'ivy-switch-buffer
  "jd" 'helm-gtags-find-tag
  "jr" 'helm-gtags-find-rtag
  "js" 'helm-gtags-find-symbol
  "jf" 'helm-gtags-find-files
  "ja" 'helm-gtags-dwim
  "jw" 'ace-jump-word-mode
  "tg" 'helm-gtags-create-tags
  "cl" 'evilnc-comment-or-uncomment-lines
  "bk" 'kill-buffer)


;; dired key config
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


;; ace-jump-mode config
(global-set-key (kbd "<f7>") 'ace-jump-word-mode)


;; config chrome browser
(global-set-key (kbd "<C-f2>") 'browse-url-chromium)


;; evil config
(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)


;; ffip config
(global-set-key (kbd "<f6>") 'find-file-in-project)


;; helm buffer-list replace the default buffer-list
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "<f5>") 'helm-find-files)


;; helm gtags config
(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)


;; config quick index find function and variable
(global-set-key (kbd "C-h C-f") 'find-function) 
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;; eshell config
(global-set-key (kbd "<C-f5>") 'multi-term)


;; recentf config
(global-set-key (kbd "\C-x\ \C-r") 'recentf-open-files)


;; open my emacs init file
(global-set-key (kbd "<C-f4>") 'my-emacs-init-file)


;; swiper config
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;;(global-set-key (kbd "<f1> l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c g") 'counsel-git)
;;(global-set-key (kbd "C-c j") 'counsel-git-grep)
;;(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
;;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;;(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


(provide 'keybinding-cfg)
