;; Two processes to calculate the sum of all the integers from a to b
;; One is recursive and the other iterative

(define sum-iter (lambda (a b)
	(define sum-loop (lambda (sum counter end)
		(if (> counter end)
		    sum
		    (sum-loop (+ sum counter) (+ counter 1) end))))
	(sum-loop 0 a b)))

(define sum-rec (lambda (a b)
	(if (= a b)
	    a
	    (+ b (sum-rec a (- b 1))))))


