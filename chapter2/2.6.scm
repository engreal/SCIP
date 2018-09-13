; 丘奇 0
(define zero
    (lambda (f) 
        (lambda (x) 
            x)))
; 丘奇 1
(define one
    (lambda (f)
        (lambda (x)
            (f x))))

; 丘奇 2
(define two
    (lambda (f)
        (lambda (x)
            (f (f x)))))

; inc
(define (subn n)
    (lambda (f)
        (lambda (x)
            ((n f) (f x)))))

; 丘奇数求和
(define (add m n)
    (lambda (f)
        (lambda (x)
            ((n f) ((m f) x)))))

; 把丘奇数 x 映射到自然数
(define (Ln->n x)
    ((x 1+) 0))
