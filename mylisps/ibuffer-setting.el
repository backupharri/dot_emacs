(provide 'ibuffer-setting)

;;--------ibuffer------------------>>
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("shell"  (or
			  (mode . shell-mode)
			  (mode . eshell-mode)))
               ("python" (mode . python-mode))
               ("ruby"   (mode . ruby-mode))
               ("html"   (mode . html-mode))
	       ("cc-c"   (or
			  (mode . c-mode)
			  (mode . c++-mode)))
               ("java"   (mode . java-mode))
               ("org"    (mode . org-mode))
	       ("emacs"  (or
			  (name . "^\\.emacs$")
			  (name . "^\\*scratch\\*$")))
               ("dired"  (mode . dired-mode))
               ("xml"    (mode . nxml-mode))))))    

(setq ibuffer-show-empty-filter-groups nil)

(add-hook 'ibuffer-mode-hook 
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))

