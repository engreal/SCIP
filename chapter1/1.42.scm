; 1.42
; compose 实现函数的复合运算
; ((compose f g) x) == (f (g x))

(define (compose f g)
    (lambda (x) 
        (f (g x))))
