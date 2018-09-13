(for-each (lambda (x) (display x) (newline ))
    (list 1 2 3))

(define (my-for-each func ls)
    (if (null? ls)
        `()
        (begin (func (car ls))
            (my-for-each func (cdr ls)))))
