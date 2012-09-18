; ネイピア数
; http://ja.wikipedia.org/wiki/%E3%83%8D%E3%82%A4%E3%83%94%E3%82%A2%E6%95%B0
;
; ネイピア数の表現
; http://ja.wikipedia.org/wiki/%E3%83%8D%E3%82%A4%E3%83%94%E3%82%A2%E6%95%B0%E3%81%AE%E8%A1%A8%E7%8F%BE
;
; e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8, 1, 1, 10...]
;
; i = 2, 5, 8, 11, 14, 17, ...
; d(i) = 2, 4, 6, 8, 10, 12, ...
;
; d(i) = i - (i - 2) / 3
; d(i) = 2(i + 1) / 3

(define (cont-frac n d k)
  (define (iter i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define (d i)
   (if (not (= 0 (remainder (+ i 1) 3)))
       1
       (* 2 (/ (+ i 1) 3))))

(define (e-euler k)
   (+ 2 (cont-frac (lambda (i) 1.0)
		   d
		   k)))

(e-euler 5)
; gosh> 2.71875

(e-euler 10)
; gosh> 2.7182817182817183

(e-euler 100)
; gosh> 2.7182818284590455

