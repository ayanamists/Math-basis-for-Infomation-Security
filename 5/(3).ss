(#%require math/number-theory)

(define (coprime? a b)
  (= (gcd a b) 1))

(define (find-ord x p)
  (define (iter i)
    (if (= (modular-expt x i p) 1)
        i
        (iter (+ i 1))))
  (iter 1))

(define (find-smallest-root p)
  (define (iter i)
    (if (= (find-ord i p) (totient p))
        i
        (iter (+ i 1))))
  (iter 2))

(define (all-root p)
  (define s (find-smallest-root p))
  (define (iter i)
    (if (> i (totient p))
        '()
        (if (coprime? i (totient p))
            (cons (modular-expt s i p) (iter (+ i 1)))
            (iter (+ i 1)))))
  (iter 1))

(all-root 81)
(all-root 59)

(define (all-order p)
  (define (iter i)
    (if (>= i p)
        '()
        (if (coprime? i p)
            (cons (find-ord i p) (iter (+ i 1)))
            (iter (+ i 1)))))
  (iter 1))

(define (ind g a p)
  (define (iter i)
    (if (= (modular-expt g i p) a)
        i
        (iter (+ i 1))))
  (iter 1))

(define (try i)
  (if (> i 41)
      '()
      (if (= (modular-expt i 22 41) 29)
          (cons i (try (+ i 1)))
          (try (+ i 1)))))

(find-smallest-root 41)
(try 1)

(define (try-2 i)
  (if (> i 41)
      '()
      (cons (modular-expt i 22 41)
            (try-2 (+ i 1)))))

(try-2 1)
