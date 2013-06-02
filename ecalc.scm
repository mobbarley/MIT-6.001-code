;; Two processes to calculate the value of e given num of terms in the series
;; One process is iterative the other recursive
;; The higher the value of the number given the more accurate the results are 



(define (e-rec num)
	(if (= num 1)
	    1
	    (+ ( e-rec (- n 1)) (/ (fact n)))))

(define (e-iter num)
	(define (e-loop sum counter prod end)
		(if (> counter end)
		    sum
		(e-loop (+ sum (/ prod)) (+ counter 1) (* prod counter) end)))
	(e-loop 0 1 1 num))


