;; MERGE-SORT(A, p, r)
;; Sorts the given array from indices p to r using a Divide-and-Conquer approach
;; O(n log n)
;; Chapter 2.3, Page 34

(define merge
  (lambda (left right)
    (cond
      ((null? left) right)
      ((null? right) left)
      ((< (car left) (car right)) (cons (car left) (merge (cdr left) right)))
      (else (cons (car right) (merge left (cdr right)))))))

(define merge-sort
  (lambda (lst)
    (let ((half (quotient (length lst) 2)))
      (cond
        ((zero? half) lst)
        (else (merge (merge-sort (list-head lst half)) 
          (merge-sort (list-tail lst half))))))))
        
