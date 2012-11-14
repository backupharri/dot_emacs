(provide 'slime-setting)

(setq slime-lisp-implementations '((sbcl ("sbcl")))) 
(require 'slime)
(slime-setup '(slime-fancy)) 
