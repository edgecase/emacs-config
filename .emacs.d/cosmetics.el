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

;; add themes downloaded from ELPA to load path
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/elpa/color-theme-solarized-20120229/")

;; Allow loading of custom themes
(custom-set-variables
 '(custom-safe-themes '("7acc0466fce1bc967ce1561c8c4fdcbf4358b4ae692577562a3ed747c109f9d7" ; zenburn
                        "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" ; solarized-dark
                        default)))

;; Choose your theme
;; (load-theme 'deeper-blue)
;; (load-theme 'tango-dark)
;; (load-theme 'tsdh-dark)
(load-theme 'solarized-dark)
;; (load-theme 'zenburn)
