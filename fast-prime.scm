;; Uses Fermat's Little Theorem for a probabilistic check if a number is prime
;; http://en.wikipedia.org/wiki/Fermat%27s_little_theorem

(define (square x) (* x x))

;; Calculates remainder base raised to power exp with a number i.e m
(define (expmod base exp m)
	(cond ((= exp 0) 1)						;; Anything raised to 0 is 1 & remainder will be 1 	 
	      ((even? exp) 						;; exponent is even
		(remainder (square (expmod base (/ exp 2) m)) m)))	;; calculate remainder of (b^(exp/2))^2 with m
	      (else (remainder (* base (expmod base (- exp 1))) m))))	;; else calculate remainder of (b^(exp-1))*b with m

;; Check if the number passes Fermat's test
(define (fermat-test? num)
	(define (try-random? a)						;; Check if remainder((a^num)/num) = num 
		(= (expmod a num num) a))		
	(try-random (+ 1 (random (- n 1)))))				;; Try with a random number from 1 to num

;; Probabilistic check where if a number passes the fermat's test then it might be prime
;; Usage is (fast-prime 17 5) which will check if 17 is prime for 5 times using the fermat's test
(define (fast-prime? num times)
	(cond ((= times 0) #t)						;; Checks exhausted? return true
	      ((fermat-test? num) 					;; Number passed fermat's test?
		(fast-prime? num (- times 1)))				;; Check with another number
	      (else #f)))						;; Number does not pass return false





