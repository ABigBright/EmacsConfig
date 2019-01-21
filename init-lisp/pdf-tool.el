(pdf-tools-install)

(defun close-linum-mode()
  (interactive)
  (linum-mode -1))

(add-hook 'pdf-view-mode-hook 'close-linum-mode)

(provide 'pdf-tool)
