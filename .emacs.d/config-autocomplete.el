;; auto-complete config
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat config-dir "ac-dict"))
(ac-config-default)

;; ac-slime config
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
