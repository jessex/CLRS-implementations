;; RANDOMIZE-IN-PLACE(A)
;; Generates a random permutation of the array A in place by random swapping
;; O(n)
;; Chapter 5, Page 126

(define swap!
  (lambda (vec i j)
    (let ((temp (vector-ref vec i)))
      (vector-set! vec i (vector-ref vec j))
      (vector-set! vec j temp))))
      
(define rand
  (lambda (a b)
    (+ a (random (- b a)))))

(define randomize-in-place
  (lambda (vec)
    (do ((n 0 (+ n 1))) ((= n (- (vector-length vec) 1)) vec)
      (let ((r (rand n (- (vector-length vec) 1))))
        (swap! vec n r)))))
        
