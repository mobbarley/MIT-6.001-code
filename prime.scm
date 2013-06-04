;; Procedure to check if a number is prime by finding the smallest divisor for a number as checking if it is equal to itself

(define (square x) (* x x))

;; Check if a divides b without any remainder
(define (divides? a b)
	(= (remainder b a) 0))

;; Gets the smallest divisor for a given number
(define (smallest-divisor num)
	(define (find-divisor num test-divisor)  		 	;; recursive block 
	 	(cond ((> (square test-divisor) num) num) 	 	;; if test-divisor > num^2 then num is smallest divisor  
		      ((divides? test-divisor num) test-divisor) 	;; does test-divisor divide num
		      (else (find-divisor num (+ test-divisor 1)))))	;; try next integer
	(find-divisor num 2))						;; start with 2 as the test-divisor

;; Check is a number is prime i.e smallest divisor is equal to itself
(define (prime? num)
	(= num (smallest-divisor num)))			
