;; ruby
(eval-after-load 'ruby-mode
  '(ignore-errors
     (add-hook 'ruby-mode-hook 'esk-paredit-nonlisp)
     (inf-ruby-keys)))

;; javascript
(eval-after-load 'javascript-mode
  '(ignore-errors
     (add-hook 'javascript-mode-hook 'esk-paredit-nonlisp)))

;; ***************************************************************************
;; Automatically recompile the emacs init file on buffer-save or exit
;; ---------------------------------------------------------------------------
(defun my-emacs-lisp-mode-hook ()
  (when (equal (or buffer-file-name "") user-init-file)
    (add-hook 'after-save-hook 'byte-compile-user-init-file t t)))

(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)
(add-hook 'kill-emacs-hook 'byte-compile-user-init-file t t)
