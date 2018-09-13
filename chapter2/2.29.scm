(define (make-mobie left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

(define (left-branch mobie)
    (car mobie))

(define (right-branch mobie)
    (car (cdr mobie)))

(define branch-length left-branch)

(define branch-structure right-branch)


(define (total-weight mobie)
    (define (weight branch)
        (let ((s (branch-structure branch)))
            (if (number? s)
                s
                (total-weight s))))
    (+ (weight (left-branch mobie))
        (weight (right-branch mobie))))
