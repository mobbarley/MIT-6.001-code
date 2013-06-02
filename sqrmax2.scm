;; Scheme code to find the max 2 numbers out of 3 and return their sum of squares

;; returns the minimum of 2 numbers
(define (minimum a b)               
        (if (< a b) a b))
;; squares a number
(define (square x) (* x x))

;; finds the minimum of 3 numbers
(define (min-of-3 a b c)
  (minimum (minimum a b) (minimum a c)))

;; gives the sum of squares of the 2 larger numbers in a bunch of 3
(define (sqr-max-2 a b c)
        (cond ((= (min-of-3 a b c) a) (+ (square b) (square c)))	;; if a is min then give back b^2 + c^2
              ((= (min-of-3 a b c) b) (+ (square a) (square c)))	;; if b is min then give back a^2 + c^2
              ((= (min-of-3 a b c) c) (+ (square a) (square b)))))	;; if c is min then give back a^2 + b^2
