;; INSERTION-SORT(A)
;; Sorts the given array by iteratively inserting each element into the sorted 
;; portion of the array 
;; O(n^2)
;; Chapter 2.1, Page 18

(define insert
  (lambda (a lst)
    (cond
      ((null? lst) (list a))
      ((<= a (car lst)) (cons a lst))
      (else (cons (car lst) (insert a (cdr lst)))))))
      
(define insertion-sort
  (lambda (lst)
    (cond
      ((null? lst) '())
      (else (insert (car lst) (insertion-sort (cdr lst)))))))

