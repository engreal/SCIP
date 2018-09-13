(define (last-pair ls)
    (if (null? ls)
        `error
        (let ((tail (cdr ls)))
            (if (null? tail)
                ls
                (last-pair tail)))))