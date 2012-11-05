(provide 'w3m-setting)

;; Use emacs-w3m to browse links inside emacs
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
