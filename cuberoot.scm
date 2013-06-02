;; gives the absolute values of any number
(define (abs x) 
  (if (< x 0) (- x) x))

;; gives the square of a number
(define (square x) (* x x))

;; gives the cube of a number
(define (cube x) (* x x x))

;; tests whether the guess is good enough by checking if the difference between cube of the guess
;; and the number is tolerable i.e. < 0.001
(define (good-enuf? guess x)
  (< (abs (- (cube guess) x)) 0.001))

;; improves the guess by averaging guess the number divided by the guess
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

;;  when a tried guess does not pass the good-enuf test then the tries the improved guess
(define (try guess x)
  (if (good-enuf? guess x) 
      guess
      (try (improve guess x) x)))

;; gives back square root of number by starting guess with 1 and then improving the guess until good-enuf
(define (cube-root x)
  (try 1 x))