;; shortcuts not available to terminal mode due to the fact that the
;; combos aren't recogized

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;;shortcuts not available to terminal mode
;;(essentially handy shorter shortcuts to otherwise already available shortcuts)
(global-set-key (kbd "C-,") 'other-window)
(global-set-key (kbd "C-;") 'rotate-windows)

;;shortcuts for growing and shrinking windows horizontally
(global-set-key (kbd "C->") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<") 'shrink-window-horizontally)

;;allow the ability to switch frames using the default OS X keybinding
(global-set-key (kbd "M-`") 'other-frame)

;;OSX Bindings
;;toggle fullscreen
(global-set-key (kbd "C-.")  'ns-toggle-fullscreen)

;;(setq mac-command-modifier 'meta)

(when (eq system-type 'darwin)
  ;; Work around a bug on OS X where system-name is FQDN
  (setq system-name (car (split-string system-name "\\."))))
