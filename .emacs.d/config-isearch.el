;;; config-isearch.el --- paste current selection from within isearch

;;; Commentary:
;; Often I find myself wanting to mostly replicate a line of text
;; which is already on the page, either earlier or later in the text.
;; isearch-paste provides convenient shortcuts for this situation

;; * enter isearch mode either by pressing C-s or C-r
;; * start typing the start of the text you want
;;   you can hit C-w to slurp a word at a time, or C-e to slurp the
;;   rest of the line
;; * press C-v C-v to paste the current selection at the point where
;;   you started your isearch

;; There are a couple of transformations available.
;; * C-v C-s wraps the selection in quotes before pasting it
;; * C-v C-i wraps the selection in ruby interpolation characters #{}

;;; Code:

(defvar isearch-paste-keymap (make-sparse-keymap "isearch-paste"))
(define-key isearch-mode-map (kbd "C-v") isearch-paste-keymap)
(define-key isearch-mode-map (kbd "C-e") 'isearch-yank-line)

(defun isearch-paste-current-match (&optional transform)
  "Insert the current isearch match string into the buffer at the original point.
Optional TRANSFORM function is called on the match before insertion"
  (let* ((text (buffer-substring-no-properties (point) isearch-other-end))
         (transformed-text (if transform (funcall transform text) text)))
    (goto-char isearch-opoint)
    (isearch-done)
    (insert transformed-text)))

;; C-v C-v : paste isearch match
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
