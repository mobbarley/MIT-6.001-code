;; To get the square root of a number using sucessive guess & averages
;; Also called the newton's method or heron's method

;; setting an accuracy or tolerance to deviation between the actual and the expected values
(define tolerance 0.001)

;; gives average of two numbers
(define (average x y)
  (/ (+ x y) 2))

;; gives the absolute values of any number
(define (abs x) 
  (if (< x 0) (- x) x))

;; gives the square of a number
(define (square x) (* x x))

;; tests whether the guess is good enough by checking if the difference between square of the guess
;; and the number is tolerable
(define (good-enuf? guess x)
  (< (abs (- (square guess) x)) tolerance))

;; improves the guess by averaging guess the number divided by the guess
(define (improve guess x)
  (average (/ x guess) guess))

;;  when a tried guess does not pass the good-enuf test then the tries the improved guess
(define (try guess x)
  (if (good-enuf? guess x) 
      guess
      (try (improve guess x) x)))

;; gives back square root of number by starting guess with 1 and then improving the guess until good-enuf
(define (sqr-root x)
  (try 1 x))
