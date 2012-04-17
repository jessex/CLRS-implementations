;; Elementary Stack Operations
;; A procedure which creates a stack structure and defines some basic operations
;; Chapter 10.1, Page 233

(define stack
  (lambda (stk)
    (lambda (op . args)
      (case op
        ((stack-empty?) (null? stk))
        ((push!) (set! stk (cons (car args) stk)))
        ((pop!) 
          (cond 
            ((null? stk) (error "underflow"))
            (else (let ((top (car stk))) 
              (set! stk (cdr stk))
              top))))))))

