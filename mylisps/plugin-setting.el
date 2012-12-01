(provide 'plugin-setting)


;;--------tramp-------------------->>
(require 'tramp)
;; tramp setting password keep time
(setq password-cache-expiry 6000)
(set-default 'tramp-default-proxies-alist (quote ((nil "\\`root\\'" "/ssh:hfeng@%h:"))))

;;--------recentf------------------>>
(recentf-mode 1)
 (setq recentf-max-menu-items 30)

;;--------browse-kill-ring--------->>
(require 'browse-kill-ring)

;;--------session------------------>>
(require 'session)
(add-hook 'after-init-hook
	  'session-initialize)
