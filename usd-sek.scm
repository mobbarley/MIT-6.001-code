;; Currency converter from USD to SEK based on a defined rate
;; Uses display, string-append & number->string procedures for a verbose output

(define RATE 0.105)

;; The below code only displays the conversion value but does not return any.
;;(define convert (lambda (currency amount)
;;	(cond ((string=? currency "USD")
;;               (display (string-append "USD->SEK : " (number->string (/ amount RATE)))))
;;	      ((string=? currency "SEK")
;;	       (display (string-append "SEK->USD : " (number->string (* amount RATE)))))
;;	      (else (display "error")))))

;; This definition both displays and gives back a value
(define convert (lambda (currency amount)
	(cond ((string=? currency "USD")
		(begin (display (string-append "USD -> SEK : " (number->string (/ amount RATE)))) 
			(/ amount RATE)))
	      ((string=? currency "SEK") 
		(begin (display (string-append "SEK -> USD : " (number->string (* amount RATE)))) 
			(* amount RATE)))
	      (else (begin (display "Error") "ERR")))))


