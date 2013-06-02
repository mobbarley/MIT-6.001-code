;; This code picks up the 2nd largest number out of a group of 3
;; Uses the min-of-3 & lesser procedures

;; Gives the lesser number of 2 
(define lesser (lambda (x y)
	(if (< x y) x y)))

;; finds the minimum of 3 numbers
(define (min-of-3 x y z)
  (lesser (lesser x y) (lesser x z)))

(define second-number (lambda (a b c)
	(cond ((= (min-of-3 a b c) a) (if (< b c) b c))
	      ((= (min-of-3 a b c) b) (if (< a c) a c))
	      ((= (min-of-3 a b c) c) (if (< a b) a b)))))
