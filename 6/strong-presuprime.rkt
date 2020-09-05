#lang racket
(require math/number-theory)

(define (congruence? a b p)
  (= (modulo a p)
     (modulo b p)))

(define (get-2^n p)
  (if (= (modulo p 2) 0)
      (let ((res (get-2^n (/ p 2))))
        (cons (+ (car res) 1)
              (cdr res)))
      (cons 0 p)))

(define (search base p)
  (define t (car (get-2^n (- p 1))))
  (define s (cdr (get-2^n (- p 1))))
  (define (iter i)
    (if (> i (- t 1))
        #f
        (let ([res (modular-expt base (* (expt 2 i) s) p)])
          (if (or (congruence? res 1 p) (congruence? res -1 p))
              (cons i res)
              (iter (+ i 1))))))
  (iter 0))

(get-2^n 25326000)
(search 2 25326001)
(search 3 25326001)
(search 5 25326001)