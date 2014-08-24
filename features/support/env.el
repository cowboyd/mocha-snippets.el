(require 'f)

(defvar mocha-yasnippets-support-path
  (f-dirname load-file-name))

(defvar mocha-yasnippets-features-path
  (f-parent mocha-yasnippets-support-path))

(defvar mocha-yasnippets-root-path
  (f-parent mocha-yasnippets-features-path))

(add-to-list 'load-path mocha-yasnippets-root-path)

(require 'mocha-yasnippets)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
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
