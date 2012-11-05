(provide 'colortheme-setting)

(add-to-list 'custom-theme-load-path (concat their-lisps-path
					     "colortheme-solarized"))

(load-theme 'solarized-dark t)
