(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? improved guess)
  (< (abs (- improved guess)) 0.001))

(define (sqrt-iter guess x)
  (define improved (improve guess x))
  (if (good-enough? improved guess)
    improved
    (sqrt-iter improved x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
; gosh> 3.000000001396984
