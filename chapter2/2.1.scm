; 计算 a与b 的最大公因数
(define (gcd a b)
    (if (zero? b)
        a
        (gcd b (remainder a b))))

; 构造有理数 q = n/d
(define (make-rat n d)
    (define (make-rat-impl)
        (let ((g (gcd n d)))
            (cons (/ n g) (/ d g))))
    (let ((rat (make-rat-impl)))
        ((if (negative? (cdr rat))
            (lambda (x) (cons (* -1 (car x)) (* -1 (cdr x))))
            (lambda (x) x)) rat)))

; 取有理数 x 的分子
(define (number x)
    (car x))

; 取有理数 x 的分母
(define (denom x)
    (cdr x))

; 打印有理数 x
(define (print-rat x)
    (display (number x))
    (display "/")
    (display (denom x)))
