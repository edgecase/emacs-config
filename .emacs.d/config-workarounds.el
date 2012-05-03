;; come on guys; autoloads are not rocket science
(autoload 'marmalade-upload-buffer "marmalade" nil t)

;; modes which should not have highlighted long lines
(add-hook 'markdown-mode-hook
          (setq whitespace-style nil))
