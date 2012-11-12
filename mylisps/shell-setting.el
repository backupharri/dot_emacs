(provide 'shell-setting)

;; run mulitiple shell 
(defun shell-mode-auto-rename-buffer (text)
  (if (eq major-mode 'shell-mode)
      (rename-buffer  (concat "*Shell: " (concat default-directory "*")) t)))
(add-hook 'comint-output-filter-functions 'shell-mode-auto-rename-buffer)

;; run mulitiple eshell 
(add-hook 'eshell-mode-hook
    (lambda ()
       (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))

(add-hook 'eshell-directory-change-hook
    (lambda ()
        (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))
