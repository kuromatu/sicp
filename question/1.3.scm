(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (two-of-three x y z)
  (cond ((= (min x y z) x) (sum-of-squares y z))
	((= (min x y z) y) (sum-of-squares x z))
	(else (sum-of-squares x y))))

(two-of-three 2 3 4)
; gosh> 25

(two-of-three 5 3 4)
; gosh> 41

(two-of-three 5 6 4)
; gosh> 61
