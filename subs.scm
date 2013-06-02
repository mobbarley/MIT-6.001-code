;; Iterative definition of subtraction process using dec procedure

(define (dec x) (- x 1))

(define (sub-iter a b)
	(if (= b 0)
	    a
	    (sub-iter (dec a) (dec b))))
