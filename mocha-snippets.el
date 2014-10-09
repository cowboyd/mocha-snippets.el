;;; mocha-snippets.el --- Yasnippets for the Mocha JS Testing Framework

;; Copyright (C) 2014 Charles Lowell

;; Author: Charles Lowell <cowboyd@frontside.io>
;; Maintainer: Charles Lowell <cowboyd@frontside.io>

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

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

(provide 'mocha-snippets)
;;; mocha-snippets.el ends here
