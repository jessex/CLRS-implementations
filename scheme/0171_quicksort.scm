;; QUICKSORT(A, p, r)
;; Sorts the given array from indices p to r using a Divide-and-Conquer approach
;; O(n^2)
;; Chapter 7, Page 171

(define pivot 
  (lambda (lst)
    (cond 
      ((or (null? lst) (null? (cdr lst))) '())
      ((<= (car lst) (cadr lst)) (pivot (cdr lst)))
      (else (car lst)))))
      
(define partition
  (lambda (lst piv par1 par2)
    (if (null? lst) 
      (list par1 par2)
      (if (< (car lst) piv)
        (partition (cdr lst) piv (cons (car lst) par1) par2)
        (partition (cdr lst) piv par1 (cons (car lst) par2))))))
        
(define quicksort
  (lambda (lst)
    (let ((piv (pivot lst)))
      (if (null? piv)
        lst
        (let ((partitions (partition lst piv '() '())))
          (append (quicksort (car partitions))
            (quicksort (cadr partitions))))))))
           
