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
    ;; themes
    solarized-theme
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

;; Configuration root directory path.
(setq config-dir (file-name-directory
                  (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path config-dir)

;; load more config files
(load "config-bindings")
(load "config-clojure-mode")
(load "config-cosmetics")
(load "config-hooks")
(load "config-registers")
(load "mustache-mode")
(load "config-workarounds")
(load "config-yasnippet")
