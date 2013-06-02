;; Iterative & recursive processes to solve the summation of a series like this
;; alt-sum[1,5] = 1 - 2 + 3 - 4 + 5


(define (alt-sum-rec low high)
	(if (= low high)
	    high
	    (- low (alt-sum-rec (+ low 1) high))))

(define (alt-sum-iter low high)
	(define (alt-sum-loop sum prev-counter counter end)
		(cond ((> counter end) sum)
		      ((< prev-counter 0) (alt-sum-loop (+ sum counter) (- prev-counter) (+ counter 1) end))
		      (else (alt-sum-loop (- sum counter) (- prev-counter) (+ counter 1) end))))
	(alt-sum-loop (0 low low high))


