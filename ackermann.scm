;; Procedure for Ackermann's function : http://en.wikipedia.org/wiki/Ackermann_function

(define (ackermann x y)
	(cond ((= y 0) 0)
	      ((= x 0) (* 2 y))
	      ((= y 1) 2)
	      (else (ackermann (- x 1) (ackermann x (- y 1))))))


