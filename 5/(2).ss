(#%require math/number-theory)

(define (find-ord x p)
  (define (iter i)
    (if (= (modular-expt x i p) 1)
        i
        (iter (+ i 1))))
  (iter 1))

(find-ord 3 19)
(find-ord 7 19)
(find-ord 10 19)
