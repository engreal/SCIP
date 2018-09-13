(define (same-parity . ls)
    (if (null? ls)
        `()
        (filter (if (odd? (car ls))
                    odd?
                    even?)
                ls)))