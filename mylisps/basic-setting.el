(provide 'basic-setting)

(setq user-mail-address "harrifeng@gmail.com")
(setq user-full-name    "harrifeng")

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(customize-set-variable 'scroll-bar-mode nil)

(tool-bar-mode -1)

(if (string-equal system-type "windows-nt")
    (menu-bar-mode -1)
  (menu-bar-mode t))

(setq ring-bell-function 'ignore)
(blink-cursor-mode -1)

(setq kill-ring-max 200)

(setq column-number-mode t)

(setq comment-empty-lines t)
;;When on one parentheses, move to the other one
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(fset 'yes-or-no-p 'y-or-n-p)

;;Delete the CR and the end of the line when Ctrl + K at beginning of the line
(setq-default kill-whole-line t)

;;if kill content are the same, ignore them
(setq kill-do-not-dave-duplicates t)

;;Stop scroll-bar, it's very important to make emacs looks move more smoothly
(setq scroll-step 0
      scroll-margin 0
      scroll-conservatively 10000)

;; Setting this will make it possible to m-x shell easily on tramp
;; you have to use "cd  c:/" other than "cd /c", 'cause that way
;; the shell does not know how to perform auto complete
;; (setq explicit-shell-file-name "sh")
(if (string-equal system-type "windows-nt")
    (setq shell-file-name (concat exec-directory "cmdproxy.exe")))

;;Maximum Windows
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;;Cmd is used for meta for MAC
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

(setq abbrev-file-name
      (concat
       my-lisps-path
      ".abbrev_defs"))

(setq custom-file
      (concat
       my-lisps-path
      ".emacs_custom.el"))


;;UTF-8 Setting
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'euc-cn)
(set-terminal-coding-system 'euc-cn)
(set-buffer-file-coding-system 'euc-cn)
(set-selection-coding-system 'euc-cn)
(modify-coding-system-alist 'process "*" 'euc-cn)
(setq default-process-coding-system '(euc-cn . euc-cn))
(setq-default pathname-coding-system 'euc-cn)
