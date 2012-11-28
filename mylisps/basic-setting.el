(provide 'basic-setting)

(setq user-mail-address "harrifeng@gmail.com")
(setq user-full-name    "harrifeng")

(setq indent-tabs-mode nil)

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



;;自动补全功能，从王垠的网站直接Copy过来的，引用一些他对此的说明
;;你可以设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优
;;先使用表最前面的函数来补全这是说，首先使用当前的buffer补全，如果找不到，就到别的可见
;;的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果还那么到kill-ring
;;里，到文件名，到简称列表里，到list, 当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致
;;相同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后
;;多按几下 M-/ 就能得到那一行。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(
	;senator-try-expand-semantic ;优先调用了senator的分析结果-很慢-还是使用吧
	try-expand-line ; 补全当前行
	try-expand-line-all-buffers
	try-expand-list ; 补全一个列表
	try-expand-list-all-buffers
	try-expand-dabbrev ; 搜索当前 buffer
	try-expand-dabbrev-visible ; 搜索当前可见窗口
	try-expand-dabbrev-all-buffers ; 搜索所有 buffer
	try-expand-dabbrev-from-kill ; 从 kill-ring 中搜索
	try-complete-file-name ; 文件名匹配
	try-complete-file-name-partially ; 文件名部分匹配
	try-complete-lisp-symbol ; 补全 lisp symbol
	try-complete-lisp-symbol-partially ; 部分补全 elisp symbol
	try-expand-whole-kill
	)
      )
