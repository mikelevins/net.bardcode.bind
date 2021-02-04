;;;; net.bardcode.bind.lisp

(in-package #:net.bardcode.bind)


(defmacro bind (bindings &body body)
  (if (null bindings)
      `(progn ,@body)
      (let* ((first-binding (first bindings))
             (rest-bindings (rest bindings))
             (binding-count (length first-binding))
             (vars (subseq first-binding 0 (1- binding-count)))
             (val-expr (elt first-binding (1- binding-count))))
        `(multiple-value-bind (,@vars) ,val-expr
           (bind ,rest-bindings ,@body)))))
