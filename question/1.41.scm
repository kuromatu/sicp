(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

((double inc) 2)
; gosh> 4

(define (square x) (* x x))

((double square) 2)
; gosh> 16

(((double double) square) 2)
; gosh> 65536

(((double double) inc) 5)
; gosh> 9

(((double (double double)) inc) 5)
; gosh> 21
