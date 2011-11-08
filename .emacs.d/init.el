(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(clojure-mode
    clojure-test-mode
    clojurescript-mode
    haml-mode
    ruby-mode
    scpaste
    scss-mode
    starter-kit
    starter-kit-bindings
    starter-kit-eshell
    starter-kit-js
    starter-kit-lisp
    starter-kit-ruby
    tuareg
    magit
    markdown-mode
    marmalade
    oddmuse
    yaml-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; setup OS X path
(setenv "PATH" (concat (shell-command-to-string "/bin/zsh -l -c 'echo -n $PATH'")
                       ":" (getenv "HOME") "/bin"))

;; auto follow symlinked files
(setq vc-follow-symlinks t)

;; start eshell upon starting emacs
(eshell)

;; graaaaaaah! eshell doesn't respect eval-after-load for some reason:
(with-current-buffer "*eshell*" (setq pcomplete-cycle-completions nil))
(set-face-foreground 'eshell-prompt "turquoise")
