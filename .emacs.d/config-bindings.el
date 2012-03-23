;; find file in project
(global-set-key (kbd "C-c f") 'find-file-in-project)

;; view kill ring
(global-set-key (kbd "C-c y") '(lambda () (interactive) (popup-menu 'yank-menu)))

;; buffer-move bindings
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; isearch customizations
(defvar isearch-paste-keymap (make-sparse-keymap "isearch-paste"))
(define-key isearch-mode-map (kbd "C-v") isearch-paste-keymap)
(define-key isearch-mode-map (kbd "C-e") 'isearch-yank-line)

(defun isearch-paste-current-match (&optional transform)
  (goto-char isearch-opoint)
  (isearch-done)
  (insert (if transform
              (funcall transform isearch-string)
            isearch-string)))

;; C-s to enter isearch mode (or C-r for reverse isearch)
;; the following bindings work in isearch mode
;; C-v C-v : paste isearch match (current highlighted match)
(define-key isearch-paste-keymap (kbd "C-v")
  (lambda () (interactive)
    (isearch-paste-current-match)))

;; C-v C-i : paste isearch match as ruby interpolated string
(define-key isearch-paste-keymap (kbd "C-i")
  (lambda () (interactive)
    (isearch-paste-current-match (lambda (str) 
                                   (concat "#{" str "}")))))

;; C-v C-i : paste isearch match as a double-quoted string
(define-key isearch-paste-keymap (kbd "C-s")
  (lambda () (interactive) 
    (isearch-paste-current-match (lambda (str)
                                   (concat "\"" str "\"")))))
