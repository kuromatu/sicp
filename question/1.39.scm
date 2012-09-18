(define (cont-frac n d k)
  (define (iter i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1) x (* x x -1)))
             (lambda (i) (- (* i 2) 1))
             k))

(tan-cf (/ 3.141592 4) 1000)
; gosh> 0.9999996732051568

(tan (/ 3.141592 4))
; gosh> 0.9999996732051569
