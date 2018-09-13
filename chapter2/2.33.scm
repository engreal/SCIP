(define (accumulate op init seq)
    (if (null? seq)
        init
        (op (car seq)
            (accumulate op init (cdr seq)))))

(define (map-ac p sequence)
    (accumulate (lambda (x y) 
                    (cons (p x) y))
        `() sequence))

(define (append-ac seq1 seq2)
    (accumulate cons seq2 seq1))

(define (length-ac sequence)
    (accumulate (lambda (rest  len)
                    (1+ len))
        0 sequence))