;; Iterative procedure to count down to a given number

(define (count2-iter1 num)
	(define (loop idx)
		(if (> idx num)
		    #t
		    (begin (display idx)
		    	   (loop (+ idx 1))))))
	(loop 1))

(define (count2-iter num)
	(define (iter counter)
		(cond ((> counter num) #t)
		      (else (display counter)
			    (iter (+ counter 1)))))
	(iter 1))

