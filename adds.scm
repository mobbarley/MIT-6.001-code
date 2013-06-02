;; An iterative & a recursive process to do addition based on PEANO ARITHMETIC - http://en.wikipedia.org/wiki/Peano_axioms#Addition

(define (inc num) (+ num 1))

(define (dec num) (- num 1))

(define (add-iter x y)
	(if (= x 0)
	    y
	(add-iter (dec x) (inc y)))) 

(define (add-rec x y)
	(if (= x 0)
	    y
	    (inc (add-rec (dec x) y))))
