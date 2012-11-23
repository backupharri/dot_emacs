(provide 'path-setting)

(when (string-equal system-type "windows-nt")

  (if run-windows-x64
      (defconst my-kp-path "d:/kp/DevTools/")
    (defconst my-kp-path "c:/kp/DevTools/"))
  
  (defconst my-mingw-path
    (concat
     my-kp-path
     "MinGW/bin/"))
  
  (defconst my-python-path
    (concat
     my-kp-path
     "python26/"))
  
  (defconst my-python-script-path
    (concat
     my-python-path
     "Scripts"))
  
  (defconst my-git-path
    (concat
     my-kp-path
     "Git/bin/"))

  (defconst my-lisp-path
    (concat
     my-kp-path
     "CommonLisp/"))     

  (defconst my-emacs-gnuwin32
    (concat
     my-emacs-path
     "utils/GnuWin32/bin")) 

  (defconst my-tcc-path
    (concat
     my-emacs-path
     "utils/tcc")) 


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
	   my-lisp-path ";"
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
