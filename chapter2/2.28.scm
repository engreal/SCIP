(define (make-tree left right)
    (list left right))

(define (left-subtree tree)
    (if (atom? tree)
        tree
        (car tree)))

(define (right-subtree tree)
    (if (atom? tree)
        tree
        (car (cdr tree))))

(define (fringe tree)
    (if (atom? tree)
        (list tree)
        (let   ((left (fringe (left-subtree tree))) 
                (right (fringe (right-subtree tree))))
            (append left right))))