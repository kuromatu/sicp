;; 反復的プロセス
(define (cont-frac n d k)
  (define (iter i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define (iter-a-to-b f a b)
  (newline)
  (display a)
  (display " -> ")
  (if (> a b)
      (f a)
      (and (display (f a)) (iter-a-to-b f (+ a 1) b))))

(iter-a-to-b
 (lambda (k)
   (cont-frac (lambda (i) 1.0)
	      (lambda (i) 1.0)
	      k))
 1
 20)


;; 再帰的プロセス
(define (cont-frac-re n d k)
  (define (cont-frac-iter i result)
    (if (= i k)
        result
        (cont-frac-iter (+ i 1) (/ (n i) (+ (d i) result)))))
  (cont-frac-iter 1 0))

(iter-a-to-b
  (lambda (k)
          (cont-frac-re (lambda (i) 1.0)
                        (lambda (i) 1.0)
                        k))
  1
  20)
