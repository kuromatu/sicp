(define (square x) (* x x))

(square 21)
; gosh> 441

(square (+ 2 5))
; gosh> 49

(square (square 3))
; gosh> 81

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)
; gosh> 25

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)
; gosh> 136
