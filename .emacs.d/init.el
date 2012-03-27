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
    sass-mode
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
    ;; themes
    color-theme-sanityinc-tomorrow
    solarized-theme
    zenburn-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Configuration root
(setq config-dir (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path config-dir)

;; setup OS X path
(if (string-equal "darwin" (symbol-name system-type))
    (setenv "PATH" (concat
                    (shell-command-to-string "/bin/zsh -l -c 'echo -n $PATH'")
                    ":" (getenv "HOME") "/bin")))

;; let emacs use git
(push "/usr/local/git/bin" exec-path)

;; auto follow symlinked files
(setq vc-follow-symlinks t)

;; Emacs is fast for OSX again!
(setq font-lock-verbose nil)

;; load more config files
(load "config-autocomplete")
(load "config-bindings")
(load "config-cosmetics")
(load "config-defuns")
(load "config-hooks")
(load "config-registers")
(load "config-workarounds")
(load "config-yasnippet")

(load "config-clojure-mode")
(load "config-markdown-mode")
(load "config-mustache-mode")
(load "config-scss-mode")
(load "config-yaml-mode")
