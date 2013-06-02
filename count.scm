;; Two process one to count up to a given number and the other to count down from a given number to 0

(define (our-display x) (display x) x)

(define (count-down num)
	(if (= num 0)
	    0
	    (begin (our-display num)
		   (count-down (- num 1)))))

(define (count-up num)
	(if (= num 0)
	    0
	    (begin (count-up (- num 1))
	    	   (our-display num))))


