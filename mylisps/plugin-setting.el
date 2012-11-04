(provide 'plugin-setting)


;;--------tramp-------------------->>
(require 'tramp)
;; tramp setting password keep time
(setq password-cache-expiry 6000)

;;--------recentf------------------>>
(recentf-mode 1)
 (setq recentf-max-menu-items 30)
