;; Elementary Binary Search Tree Operations
;; A procedure which creates a stack structure and defines some basic operations
;; Chapter 12, Page 288

(define make-tree-leaf
  (lambda (elem)
    (list elem)))
    
(define make-tree-node
  (lambda (elem left-tree right-tree)
    (list elem left-tree right-tree)))
    
(define has-left-subtree?
  (lambda (tree)
    (cond
      ((or (null? tree) (eq? 1 (length tree))) #f)
      ((null? (cadr tree)) #f)
      (else #t))))
      
(define has-right-subtree?
  (lambda (tree)
    (cond
      ((or (null? tree) (< (length tree) 3)) #f)
      ((null? (last tree)) #f)
      (else #t))))
    
(define inorder-tree-walk
  (lambda (tree)
    (cond
      ((has-left-subtree? tree) (inorder-tree-walk (cadr tree))))
    (cond
      ((null? tree) '())
      (else (display (car tree))))
    (cond
      ((has-right-subtree? tree) (inorder-tree-walk (last tree))))))
    
(define preorder-tree-walk
  (lambda (tree)
    (cond
      ((null? tree) '())
      (else (display (car tree))))
    (cond
      ((has-left-subtree? tree) (preorder-tree-walk (cadr tree))))
    (cond
      ((has-right-subtree? tree) (preorder-tree-walk (last tree))))))
    
(define postorder-tree-walk
  (lambda (tree)
    (cond
      ((has-left-subtree? tree) (postorder-tree-walk (cadr tree))))
    (cond
      ((has-right-subtree? tree) (postorder-tree-walk (last tree))))
    (cond
      ((null? tree) '())
      (else (display (car tree))))))
    
(define tree-search
  (lambda (tree k)
    (cond
      ((or (null? tree) (eq? k (car tree))) tree)
      ((and (has-left-subtree? tree) (< k (car tree))) (tree-search (cadr tree) k))
      ((has-right-subtree? tree) (tree-search (last tree) k)))))

(define tree-minimum
  (lambda (tree)
    (cond
      ((has-left-subtree? tree) (tree-minimum (cadr tree)))
      (else (car tree)))))
      
(define tree-maximum
  (lambda (tree)
    (cond
      ((has-right-subtree? tree) (tree-maximum (last tree)))
      (else (car tree)))))

