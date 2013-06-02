;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Square root method - Heron in a box
;; Lexical scoping done
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (average a b)
  (/ (+ a b) 2))

(define (abs num)
  (if (< num 0) (- num) num))

(define (square nummer) (* nummer nummer))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess) 
	guess 
	(sqrt-iter (improve guess))))
  (sqrt-iter 1.0 x))
