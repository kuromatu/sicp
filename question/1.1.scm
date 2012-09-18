10
; gosh> 10

(+ 5 3 4)
; gosh> 12

(- 9 1)
; gosh> 8

(/ 6 2)
; gosh> 3

(+ (* 2 4) (- 4 6))
; gosh> 6

(define a 3)

(define b (+ a 1))

(+ a b (* a b))
; gosh> 19

(= a b)
; gosh> #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; gosh> 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; gosh> 16

(+ 2 (if (> b a) b a))
; gosh> 6

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))
; gosh> 16
