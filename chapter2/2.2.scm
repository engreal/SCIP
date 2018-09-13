; 构造点 (x, y)
(define (make-point x y)
    (cons x y))

; 读取点 p 的横坐标
(define (point-x p)
    (car p))

; 读取点 p 的纵坐标
(define (point-y p)
    (cdr p))

; 构造线段 pa->pb
(define (make-segment pa pb)
    (cons pa pb))

; 读取线段 s 的起点
(define (segment-start s)
    (car s))

; 读取线段 s 的终点
(define (segment-end s)
    (cdr s))

; 获取线段 s 的中点坐标
(define (segment-midpoint s)
    (let ((p1 (segment-start s)) (p2 (segment-end s)))
        (cons (/ (+ (point-x p1) (point-x p2))  2)
            (/ (+ (point-y p1) (point-y p2))  2))))
