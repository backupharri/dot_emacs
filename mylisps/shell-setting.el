
;; run mulitiple shell 
(defun shell-mode-auto-rename-buffer (text)
  (if (or
       (eq major-mode 'shell-mode)
       (eq major-mode 'eshell-mode))
      (rename-buffer  (concat "shell: " default-directory) t)))
(add-hook 'comint-output-filter-functions 'shell-mode-auto-rename-buffer)

;; run mulitiple eshell 
(add-hook 'eshell-mode-hook
    (lambda ()
       (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))

(add-hook 'eshell-directory-change-hook
    (lambda ()
        (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))



(provide 'shell-setting)

