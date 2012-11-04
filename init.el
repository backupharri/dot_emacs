(if (string-equal system-type "windows-nt")
    (defconst my-emacs-path "c:/gitbox/dot_emacs/")
  (defconst my-emacs-path "~/.emacs.d"))

(defconst my-lisps-path  (concat my-emacs-path "mylisps/") "Path for self lisps")
(defconst my-templates-path (concat my-emacs-path "templates/") "Path for templates")

;; load all my-lisps 
(load (concat my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-lisps-path)

(require 'basic-setting)
(require 'keybind-setting)
(require 'helpfunc-setting)
(require 'plugin-setting)
(require 'orgmode-setting)
(require 'ibuffer-setting)
(require 'path-setting)
(require 'font-setting)
