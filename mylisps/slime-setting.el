(provide 'slime-setting)
(byte-recompile-directory "." 0)

(setq slime-lisp-implementations '((sbcl ("sbcl")))) 
(require 'slime)
(slime-setup '(slime-fancy)) 
