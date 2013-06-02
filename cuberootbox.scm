(define (abs x)
  (if (< x 0) (-x) x))

(define (cube x) (* x x x))

(define (square x) (* x x))

(define (cube-root x)
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (good-enuf? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (try guess)
    (if (good-enuf? guess) 
	guess 
	(try (improve guess))))
  (try 1))