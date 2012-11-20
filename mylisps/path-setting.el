(provide 'path-setting)

(when (string-equal system-type "windows-nt")

  (defconst my-emacs-gnuwin32
    (concat
     my-emacs-path
     "utils/GnuWin32/bin")) 

  (defconst my-tcc-path
    (concat
     my-emacs-path
     "utils/tcc")) 

  (defconst my-mingw-path "c:/MinGW/bin/")
  
  (defconst my-python-path "c:/python26/")
  (defconst my-python-script-path
    (concat
     my-python-path
     "Scripts"))
  
  (if run-windows-x64
      (defconst my-git-path "c:/Program Files (x86)/Git/bin/")
    (defconst my-git-path "c:/Program Files/Git/bin/"))

  (setenv "PATH"
	  (concat
	   ;;gnuwn32 is always ahead, as some unix tools in git path
	   ;;are out of date, for example, grep.exe
	   my-emacs-gnuwin32 ";"
	   my-git-path ";"
	   my-python-path ";"
	   my-python-script-path ";"
	   my-tcc-path ";"
	   my-mingw-path ";"
	   (getenv "PATH")
	   ))
  )

;;For Macos build the emacs by
;; > brew install emacs --cocoa --srge

(when (string-equal system-type (or "darwin" "gnu/linux"))
  (setenv "PATH"
	  (concat
	   "/bin"           ":"
	   "/sbin"          ":"
	   "/usr"           ":"
	   "/usr/bin"       ":"
	   "/usr/local/bin" ":"
	   "/usr/sbin"      ":"
	   (getenv "PATH")
	   ))
  )

;; This setting will work for all the platforms
(setq exec-path (split-string (getenv "PATH") path-separator))
