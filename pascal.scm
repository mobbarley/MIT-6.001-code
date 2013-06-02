;; An iterative & a recursive process to calculate the kth element of the nth row in a Pascal's triangle
;; https://en.wikipedia.org/wiki/Pascal's_triangle

(define (ifact num)
	(define (fact-iter product counter num)
		(if (> counter num)
		    	product
		    (fact-iter (* product counter) (+ counter 1) num)))
	(fact-iter 1 1 num))

(define (pascal n k) 
	(/ (ifact n) (* (ifact k) (ifact (- n k)))))

(define (ipascal n k)
	(define (pasc-iter counter product end)
		(if (= counter end)
		    	(* counter product)
		    (pasc-iter (- counter 1) (* product counter) end)))
	(/ (pasc-iter n 1 (+ n (- k) 1))
	   (pasc-iter k 1 1)))
 
