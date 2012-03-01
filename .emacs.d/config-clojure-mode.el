;; use this function to open a repl on heroku deployed apps
(defun heroku-repl ()
  (interactive)
  (inferior-lisp "heroku run lein repl"))
