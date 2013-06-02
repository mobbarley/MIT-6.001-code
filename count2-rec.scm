;; Recursive process for displaying series of integers upto a given number.

(define (our-display x) (display (string-append " " (number->string x))) x)

(define (count2-rec x)
	(cond ((= x 0) 0)
	      (else (count2-rec (- x 1))
		    (our-display x))))


