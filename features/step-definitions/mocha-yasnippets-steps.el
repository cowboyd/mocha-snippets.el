;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(And "^I customize the string delimiter to double quote$"
     (lambda ()
       (make-local-variable 'mocha-snippets-string-delimiter)
       (setq mocha-snippets-string-delimiter "\"")))

(And "^I customize the function syntax to unbound function$"
     (lambda ()
       (make-local-variable 'mocha-snippets-use-fat-arrows)
       (setq mocha-snippets-use-fat-arrows nil)))
