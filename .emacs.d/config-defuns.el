(defun compiled-user-init-file ()
  (concat (substring user-init-file 0 (- (length user-init-file) 3)) ".elc"))

(defun byte-compile-user-init-file ()
  (let ((byte-compile-warnings '(unresolved)))
    ;; in case compilation fails, don't leave the old .elc around:
    (when (file-exists-p (compiled-user-init-file))
      (delete-file (compiled-user-init-file)))
    (byte-compile-file user-init-file)
    (message "%s compiled" user-init-file)))

(provide 'config-defuns)
