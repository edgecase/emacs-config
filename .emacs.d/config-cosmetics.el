;; font
(set-face-attribute 'default nil :height 140)

;; change hl-line color from annoying yellow
(custom-set-faces
 '(hl-line ((t (:background "#2b2b2b")))))

;; default to better frame titles
(setq frame-title-format (concat  "%b - emacs@" system-name))

;; turn on line numbers
(global-linum-mode t)

;; highlight ending whitespace
(global-whitespace-mode t)

;; display only tails of lines longer than 80 columns, tabs and
;; trailing whitespaces
(setq whitespace-line-column 80
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
;; (color-theme-sanityinc-tomorrow-day)
;; (color-theme-sanityinc-tomorrow-night)
;; (color-theme-sanityinc-tomorrow-blue)
(color-theme-sanityinc-tomorrow-bright)
;; (load-theme 'color-theme-sanityinc-tomorrow-eighties)
;; (load-theme 'deeper-blue t)
;; (load-theme 'tango-dark t)
;; (load-theme 'tsdh-dark t)
;; (load-theme 'solarized-dark t)
;; (load-theme 'zenburn t)
