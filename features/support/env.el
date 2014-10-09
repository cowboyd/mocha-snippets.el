(require 'f)

(defvar mocha-yasnippets-support-path
  (f-dirname load-file-name))

(defvar mocha-yasnippets-features-path
  (f-parent mocha-yasnippets-support-path))

(defvar mocha-yasnippets-root-path
  (f-parent mocha-yasnippets-features-path))

(add-to-list 'load-path mocha-yasnippets-root-path)

(require 'mocha-snippets)
(require 'espuds)
(require 'ert)

(Setup
 (require 'coffee-mode)
 (require 'js2-mode)
 (require 'yasnippet)
 ;; remove home dir/.emacs.d/snippets from yas-path
 (pop yas-snippet-dirs)
 (yas-global-mode +1)
 (prin1 yas-snippet-dirs)
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
