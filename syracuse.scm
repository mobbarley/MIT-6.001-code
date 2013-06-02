;; Syracuse series - based on Collatz conjecture http://en.wikipedia.org/wiki/Collatz_conjecture
;; syracuse term calculates the nth element & syracuse procedure generates the series

(define (our-display x) (display x) #t)

(define (syracuse-term num)
	(if (even? num)
	    (/ num 2)
	    (+ (* 3 num) 1)))

(define (syracuse low high)
	(if (= low high)
	    (our-display (syracuse-term high))
	(begin (our-display (syracuse-term low))
	       (syracuse (+ low 1) high))))


