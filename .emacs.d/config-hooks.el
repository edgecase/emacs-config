;; ruby
(eval-after-load 'ruby-mode
  '(ignore-errors
     (add-hook 'ruby-mode-hook 'esk-paredit-nonlisp)
     (inf-ruby-keys)))

;; javascript
(eval-after-load 'javascript-mode
  '(ignore-errors
     (add-hook 'javascript-mode-hook 'esk-paredit-nonlisp)))

;; ac-slime config
;; (add-hook 'slime-mode-hook 'set-up-slime-ac)
;; (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
