;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun help-sk()
  (interactive)
  (switch-to-buffer "*scratch*")
  (erase-buffer)
  (switch-to-buffer "*scratch*")
  (insert "\n----------------------------\n")
  (insert "- <C-f2> open browser\n")
  (insert "- <C-f3> open emacs init file\n")
  (insert "- <C-f5> open multi term\n")
  (insert "- <f5> helm find file\n")
  (insert "- <f6> open ffip\n")
  (insert "- <f7> ace jump\n")
  (insert "- <M-.> helm gtags dwim\n")
  (insert "- <M-,> helm gtags jump back\n")
  (insert "- <C-j> helm gtags find symbol\n")
  (insert "- <C-c g a> helm gtags call\n")
  (insert "----------------------------\n"))
(global-set-key (kbd "<C-f11>") 'help-sk)

(provide 'help-sk)
