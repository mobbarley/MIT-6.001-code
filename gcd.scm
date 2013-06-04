;; Calculates GCD i.e Greatest Common Divisor of two given numbers
;; Uses Euclid's Algorithm : http://en.wikipedia.org/wiki/Euclidean_algorithm

(define (gcd a b)
	(if (= b 0)
	    a
	    (gcd b (remainder a b))))


