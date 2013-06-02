;; 3 types of process to compute the exponention of a raised to b
;; expt-iter & expt-iter1 are both iterative

(define (square x) (* x x))

(define (expt-rec a b)
	(if (= b 0)
	    1
	    (* a (expt-rec a (- b 1)))))

(define (expt-iter a b)
	(define (expt-loop product counter end)
		(if (= counter end)
		    product
		    (expt-loop (* product a) (+ counter 1) end)))
	(expt-loop a 1 b))

(define (expt-iter1 a b)
	(define (expt-loop1 num counter result)
		(if (= counter 0)
		    result
		    (expt-loop1 num (- counter 1) (* result num))))
	(expt-loop1 a b 1))

( define (fast-expt a b)
	(cond ((= b 0) 1)
	      ((even? b) (square (fast-expt a (/ b 2))))
	      (else (* b (fast-expt a (- b 1))))))

 
