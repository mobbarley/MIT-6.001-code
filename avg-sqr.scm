;; Calculates average of squares of two numbers 
;; Uses procedures avg & sqr for average & square calculation

;; Calculates average 
(define avg (lambda (a b) (/ (+ a b) 2)))

;; Calculates square
(define sqr (lambda (x) (* x x)))

(define avg-sqr (lambda (a b) (avg (sqr a) (sqr b))))

