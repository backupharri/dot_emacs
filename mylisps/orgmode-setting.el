(provide 'orgmode-setting)

;;--------org-mode------------------>>
;; I don't want to use org-mode's auto type subscript.
;; only setting this is not enough, you also
;; have to set '#+OPTIONS:^:{}' at the beginning
;; of the org file, With this setting, 'a_b' will
;; not be interpreted as a subscript, but 'a_{b}' will.
(setq org-export-with-sub-superscripts nil)

;; When you have made some personal keyboard shortcuts in
;; emacs using global-set-key, both major modes and minor
;; modes will override those if it uses the same keys.
;; This is because major mode and minor mode's keymaps
;; have priority over global keymaps.
(add-hook 'org-mode-hook
	  (lambda()
	    (define-key org-mode-map (kbd "C-,") 'set-mark-command)
	    ))

(defun yas/org-very-safe-expand ()
  (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

(add-hook 'org-mode-hook
	  (lambda ()
	    (make-variable-buffer-local 'yas/trigger-key)
	    (setq yas/trigger-key [tab])
	    (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
	    (define-key yas/keymap [tab] 'yas/next-field)))
