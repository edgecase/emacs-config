;;; enables outlining for ruby
;;; You may also want to bind hide-body, hide-subtree, show-substree
;;; show-all, show-children, ... to some keys easy folding and unfolding
(add-hook 'ruby-mode-hook
              '(lambda ()
                 (outline-minor-mode)
                 (setq outline-regexp
                       " *\\(def \\|class\\|module\\|describe \\|it \\)")))

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
