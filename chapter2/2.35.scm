(define (accumulate op init seq)
    (if (null? seq)
        init
        (op (car seq)
            (accumulate op init (cdr seq)))))

(define (count-leaves tree)
    (accumulate (lambda (next init) (+ next init))
                0
                (map (lambda (subtree) 
                        (cond ((null? subtree) 0)
                            ((atom? subtree) 1)
                            (else (count-leaves subtree))))
                    tree)))