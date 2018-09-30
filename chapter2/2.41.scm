(define (enumerate-interval begin end)
    (if (= begin end)
        `()
        (cons begin
            (enumerate-interval (1+ begin) end))))

(define (tuple-2 n)
    (fold-right append
        `()
        (map (lambda (i)
                (map (lambda (j) (list j i))
                    (enumerate-interval 1 i)))
            (enumerate-interval 1 (1+ n)))))

(define (tuple-3 n)
    (fold-right append
        `()
        (map (lambda (p)
                (map (lambda (j) (cons j p))
                    (enumerate-interval 1 (car p))))
             (tuple-2 n))))

(define (tuple-3-sum s)
    (filter (lambda (t3) (= s (apply + t3)))
        (tuple-3 s)))
