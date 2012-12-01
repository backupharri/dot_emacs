(provide 'plugin-setting)


;;--------tramp-------------------->>
(require 'tramp)
;; tramp setting password keep time
(setq password-cache-expiry 6000)

(if (string-equal system-type "windows-nt")
    (setq tramp-default-method "plink")
  (setq tramp-default-method "ssh"))

(set-default 'tramp-default-proxies-alist (quote ((nil "\\`root\\'" "/hfeng@%h:"))))

;;--------recentf------------------>>
(recentf-mode 1)
 (setq recentf-max-menu-items 30)

;;--------browse-kill-ring--------->>
(require 'browse-kill-ring)

;;--------session------------------>>
(require 'session)
(add-hook 'after-init-hook
	  'session-initialize)
