(define (enumerate-interval begin end)
    (if (= begin end)
        `()
        (cons begin
            (enumerate-interval (1+ begin) end))))


(define (unique-pair n)
    (fold-right append
        `()
        (map (lambda (i)
                (map (lambda (j) (list i j))
                    (enumerate-interval 1 i)))
            (enumerate-interval 1 (1+ n)))))

(define (prime? n)
    (case n
        (1 #f)
        ((2 3) #t)
        (else (let loop((k 2))
            (cond ((> (* k k) n) #t)
                ((zero? (remainder n k)) #f)
                (else (loop (1+ k))))))))

(define (prime-sum-pairs n)
    (filter (lambda (p) (prime? (+ (car p) (car (cdr p)))))
            (unique-pair n)))
