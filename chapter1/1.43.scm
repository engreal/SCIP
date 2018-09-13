; 1.43.scm
; (repeated f n) ==> f^n 
; compose in 1.42.scm
(define (repeated f n)
    (if (= 0 n)
        (lambda (x) x)
        (compose f
            (repeated f (dec n)))))
