(provide 'font-setting)
(byte-recompile-directory "." 0)

(qiang-set-font
 '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=16"
 '("kai" "楷体" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" ))


(when (string-match system-name "sh-rd-hfeng")
  (qiang-set-font
   '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=16"
   '("楷体" "kai" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" )))

(when (string-match system-name "hfeng-pc")
  (qiang-set-font
   '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=18"
   '("楷体" "kai" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" )))

(when (string-match system-name "hfeng.local")
  (qiang-set-font
   '("Monaco" "Consolas" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=16"
   '("kai" "楷体" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" )))


