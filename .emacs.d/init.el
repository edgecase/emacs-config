(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(ac-slime
    buffer-move
    clojure-mode
    clojure-test-mode
    clojurescript-mode
    coffee-mode
    haml-mode
    pivotal-tracker
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
    midje-mode
    oddmuse
    yasnippet
    yaml-mode
    color-theme-solarized
    zenburn-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; setup OS X path
(setenv "PATH" (concat (shell-command-to-string "/bin/zsh -l -c 'echo -n $PATH'")
                       ":" (getenv "HOME") "/bin"))
(push "/usr/local/git/bin" exec-path)

;; auto follow symlinked files
(setq vc-follow-symlinks t)

;; Emacs is fast for OSX again!
(setq font-lock-verbose nil)

;; load more config files
(setq emacs-config-dir "~/.emacs.d/")
(load (expand-file-name "bindings.el" emacs-config-dir))
(load (expand-file-name "cosmetics.el" emacs-config-dir))
(load (expand-file-name "hooks.el" emacs-config-dir))
(load (expand-file-name "registers.el" emacs-config-dir))

(load (expand-file-name "yasnippet.el" emacs-config-dir))
(load (expand-file-name "mustache-mode.el" emacs-config-dir))

(load (expand-file-name "workarounds.el" emacs-config-dir))

;; start eshell upon starting emacs
(eshell)

;; graaaaaaah! eshell doesn't respect eval-after-load for some reason:
(with-current-buffer "*eshell*" (setq pcomplete-cycle-completions nil))
(set-face-foreground 'eshell-prompt "turquoise")
