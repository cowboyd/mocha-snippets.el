;;; package --- Summary
;;;
;;; Commentary:
;;;  Here is commentary
;;; Code:


(setq mocha-snippets-root (file-name-directory (or load-file-name
                                                   (buffer-file-name))))


;;;###autoload
(defun mocha-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" mocha-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load "yasnippet"
  '(mocha-snippets-initialize))

(provide 'mocha-yasnippets)
;;; mocha-yasnippets.el ends here
