;; Elementary Queue Operations
;; A procedure which creates a queue structure and defines some basic operations
;; Chapter 10.1, Page 235

(define queue
  (lambda (q)
    (let ((front '()) (back q))
      (lambda (op . args)
        (case op
          ((enqueue!) (set! back (cons (car args) back)))
          ((dequeue!)
            (cond
              ((and (null? front) (null? back)) (error "underflow"))
              (else 
                (if (null? front)
                  (begin 
                    (set! front (reverse back))
                    (set! back '())))
                  (let ((top (car front)))
                    (set! front (cdr front))
                    top)))))))))            

