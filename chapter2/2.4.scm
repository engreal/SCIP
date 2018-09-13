(define (my-cons x y)
    (lambda (m) (m x y)))

(define (my-car z)
    (z (lambda (x y) x)))

(define (my-cdr z)
    (z (lambda (x y) y)))
