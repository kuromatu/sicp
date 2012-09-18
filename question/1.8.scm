(define (square x) (* x x))

(define (improve x y)
  (/
   (+ (/ x (square y))
      (* 2 y))
   3))

(define (good-enough? improved y)
  (< (abs (- improved y)) 0.001))

(define (curt-iter x y)
  (define improved (improve x y))
  (if (good-enough? improved y)
    improved
    (curt-iter x improved)))

(define (curt x)
  (curt-iter x 1.0))

(curt 10)
; gosh> 2.154434691772293
