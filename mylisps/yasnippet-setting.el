(provide 'yasnippet-setting)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat their-lisps-path
			    "yasnippet/snippets/"))
