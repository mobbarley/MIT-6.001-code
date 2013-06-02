;; Shows a bar of * of a given length

(define (our-display x) (display x) #t)

(define (display-bar num)
	(if (< num 0)
	    (our-display "Error negative length")
	((cond ((= num 0) (our-display "Error zero length"))
	       ((= num 1) (our-display "*"))
	       (else (our-display "*")
		     (display-bar (- num 1))))))


	
