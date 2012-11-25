(defconst my-emacs-path (file-truename "~/.emacs.d/"))

(defconst my-lisps-path  (concat my-emacs-path "mylisps/") "Path for self lisps")

;; load all my-lisps 
(load (concat my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-lisps-path)
(my-add-subdirs-to-load-path their-lisps-path)

(require 'basic-setting)
(require 'keybind-setting)
(require 'helpfunc-setting)
(require 'plugin-setting)
(require 'orgmode-setting)
(require 'ibuffer-setting)
(require 'font-setting)
(require 'shell-setting)
