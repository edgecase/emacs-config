;;(add-hook 'ruby-mode-hook 'whitespace-mode)

;; ruby
(eval-after-load 'ruby-mode
  '(ignore-errors
     (add-hook 'ruby-mode-hook 'esk-paredit-nonlisp)
     (inf-ruby-keys)))

;; javascript
(eval-after-load 'javascript-mode
  '(ignore-errors
     (add-hook 'javascript-mode-hook 'esk-paredit-nonlisp)))
