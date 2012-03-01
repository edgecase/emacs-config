;; default to better frame titles
(setq frame-title-format (concat  "%b - emacs@" system-name))

;; turn on line numbers
(global-linum-mode t)

;; highlight ending whitespace
(global-whitespace-mode t)

;; display only tails of lines longer than 250 columns, tabs and
;; trailing whitespaces
(setq whitespace-line-column 250
      whitespace-style '(face tabs trailing lines-tail))

;; default tab-width
(setq-default tab-width 2)

;; use spaces when indenting code
(setq-default indent-tabs-mode nil)

;; face for long lines' tails
(set-face-attribute 'whitespace-line nil
                    :background "red1"
                    :foreground "yellow"
                    :weight 'bold)

;; face for Tabs
(set-face-attribute 'whitespace-tab nil
                    :background "red1"
                    :foreground "yellow"
                    :weight 'bold)

;;;
;;; Choose your theme
;;;
;; (load-theme 'deeper-blue t)
;; (load-theme 'tango-dark t)
;; (load-theme 'tsdh-dark t)
(load-theme 'solarized-dark t)
;; (load-theme 'zenburn t)

