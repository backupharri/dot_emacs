(provide 'yasnippet-setting)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat their-lisps-path
			    "yasnippet/snippets/"))

(setq mmm-global-mode 't)
(setq yas/prompt-functions '(yas/dropdown-prompt yas/x-prompt))
