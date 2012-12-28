(when (eq system-type 'darwin)
  ;; Work around a bug on OS X where system-name is FQDN
  (setq system-name (car (split-string system-name "\\."))))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/")
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(ac-slime
    auto-complete
    buffer-move
    clojure-mode
    clojure-test-mode
    clojurescript-mode
    color-theme
    coffee-mode
    expand-region
    feature-mode
    haml-mode
    highlight-symbol
    less-css-mode
    pivotal-tracker
    ruby-mode
    sass-mode
    scpaste
    scss-mode
    slim-mode
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
    nrepl
    oddmuse
    window-number
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
(if (eq system-type 'darwin)
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
(load "config-highlight-symbol")
(load "config-hooks")
(load "config-isearch")
(load "config-osx")
(load "config-registers")
(load "config-workarounds")
(load "config-yasnippet")

;; load major mode configs
(load "config-clojure-mode")
(load "config-less-css-mode")
(load "config-markdown-mode")
(load "config-mustache-mode")
(load "config-ruby-mode")
(load "config-scss-mode")
(load "config-sh-mode")
(load "config-window-number-mode")
(load "config-yaml-mode")

;; Put auto-save files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/auto-save-files.
;; (custom-set-variables
;;   '(auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-files/\\1" t)))
;;   '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

(setq backup-directory-alist
      `((".*" . , "~/.emacs.d/backups/")))
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/auto-save-files/" t)))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/auto-save-files/" t)
