(define (accumulate op init seq)
    (if (null? seq)
        init
        (op (car seq)
            (accumulate op init (cdr seq)))))

(define (horner-eval x coefficient-sequence)
    (accumulate (lambda (next init)
                    (+ (* init x) next))
        0
        coefficient-sequence))