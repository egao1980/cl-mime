(defsystem :cl-mime-test
  :name "MIME-TEST"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :depends-on ("cl-mime" "rove")
  :serial t
  :components ((:module "t"
                :components ((:file "package")
                             (:file "parse-mime"))))
  :perform (test-op (op c)
             (unless (symbol-call '#:rove '#:run c)
               (error "tests failed for ~A" (component-name c)))))
