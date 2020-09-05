#lang racket

(define (get-cont-frac a b)
  (if (= b 0)
      '()
      (cons (floor (/ a b))
            (get-cont-frac b (modulo a b)))))

(define (calu-cont-frac cf)
  (if (null? (cdr cf))
      (car cf)
      (+ (car cf)
         (/ 1 (calu-cont-frac (cdr cf))))))

(define (fine-calu cf)
  (let ([res (calu-cont-frac cf)])
    (cons (numerator res)
          (denominator res))))

(define (get-n-1 cf)
  (reverse (cdr (reverse cf))))

(define a (get-cont-frac 7696 4144))
a

(fine-calu a)
(- (* 4144 2) 7696)
(* 13 592)

(define b (get-cont-frac 77 63))
b
(fine-calu (get-n-1 b))
(get-cont-frac -5391 3976)
(get-cont-frac -22 21)
(fine-calu '(2 -1 -20))