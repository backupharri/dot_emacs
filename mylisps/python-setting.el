(provide 'python-setting)

;; The setting sequence is strict, you have to set the
;; python mode first, then set the pep8.

;;--------python mode----------->
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;;--------python pep8----------->
(require 'python-pep8)

