;; Displays the binary value of a given +ve integer

(define (our-display x) (display x) #t)

(define (err-display x) (display x) #f)

(define (display-bin num)
	(define (display-bin-rec num)
		(if (= num 1)
		    (our-display (remainder num 2))
		    (begin (our-display (remainder num 2))
			   (display-bin-rec (quotient num 2)))))
	(cond ((= num 0) (our-display 0))
	      ((< num 0) (err-display "Error: Negative number cannot be converted to a binary") 
	      ((integer? num) (err-display "Error: Please input integer only"))
	      (else (display-bin-rec num))))


	
