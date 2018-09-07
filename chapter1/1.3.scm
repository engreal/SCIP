; 以三个数为参数，返回较大两个数的和
(define (add-1st-2nd a b c)
    (if (> a b)
        (+ a (if (> b c)
            b
            c))
        (+ b (if (> a c)
            a
            c))))
