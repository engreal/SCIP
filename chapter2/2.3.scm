(load "./2.2.scm")

; 根据左上角 lefttop 和右下角 rightbuttom 构造矩形
(define (make-rect lefttop rigbtbuttom)
    (let ((w (- (car rigbtbuttom) (car lefttop) ))
        (h (- (cdr rigbtbuttom) (cdr lefttop) )))
        (cons lefttop (cons w h))))

; 计算矩形的面积
(define (rect-area r)
    (let ((p (cdr r)))
        (* (car p) (cdr p))))

; 计算矩形的周长
(define (rect-circle r)
    (let ((p (cdr r)))
        (* 2 (+ (car p) (cdr p)))))

; 根据左上角 p 长 w 宽 h 构造矩形
(define (make-rect-1 p w h)
    (cons p (cons w h)))
