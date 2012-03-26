;; come on guys; autoloads are not rocket science
(autoload 'marmalade-upload-buffer "marmalade" nil t)

;; set mustache-mode
(require 'mustache-mode)
(add-to-list 'auto-mode-alist '("\\.hbs$" . mustache-mode))
