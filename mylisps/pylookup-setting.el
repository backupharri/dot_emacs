(provide 'pylookup-setting)

;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

(defconst pylookup-dir
  (concat
   my-emacs-path
   "yours/pylookup"))

;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.bat"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; set search option if you want
;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

