;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Square root method - Heron in a box
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (average a b)
  (/ (+ a b) 2))

(define (abs num)
  (if (< num 0) (- num) num))

(define (square nummer) (* nummer nummer))

(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x) 
	guess 
	(sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))
