;; stark swank server and open a slime session inside leiningen project
(global-set-key (kbd "C-c C-j") 'clojure-jack-in)

;; use this function to open a repl on heroku deployed apps
(defun heroku-repl ()
  (interactive)
  (inferior-lisp "heroku run lein repl"))

(defun define-function ()
  (interactive)
  (let ((name (symbol-at-point)))
    (backward-paragraph)
    (insert "\n(defn " (symbol-name name) "\n  \"\"\n  []\n  )\n")
    (backward-char 11)))

(global-set-key (kbd "C-c d") 'define-function)
