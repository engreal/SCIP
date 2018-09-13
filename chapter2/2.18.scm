(define (my-reverse ls)
    (letrec ((iter (lambda (s d)
                (if (null? s)
                    d
                    (iter (cdr s) (cons (car s) d))))))
        (iter ls `())))