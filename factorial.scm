;; A recursive and an iterative process to calculate the factorial of a given number

(define (factorial num)
	(if (= num 1)
	    1
	    (* num (factorial (- n 1)))))

(define (ifact num)
	(define (fact-iter product counter num)
		(if (> counter num)
		    product
		    (fact-iter (* product counter) (+ counter 1) num)))
	(fact-iter 1 1 num))

  
