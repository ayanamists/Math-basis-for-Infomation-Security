#lang racket

(define (permutations s)
  (cond [(empty? s) empty]
        [(empty? (rest s)) (list s)]
        [else
         (let splice [(l '()) (m (first s)) (r (rest s))]
           (append
            (map (lambda (x) (cons m x))
                 (permutations (append l r)))
            (if (empty? r)
                empty
                (splice (cons m l) (car r) (cdr r)))))]))

(define (vector-permutations vec)
  (map (λ (x) (list->vector x))
       (permutations (vector->list vec))))

(struct circle (list order)
  #:inspector #f)

(define (simply->normal cir)
  (let* ([vec (make-vector (circle-order cir) -1)]
         [atom->normal
          (λ (x)
            (let loop ([i 0])
              (if (= i (length x))
                  #t
                  (begin
                    (vector-set! vec (list-ref x i)
                                 (list-ref x (modulo (+ i 1) (length x))))
                    (loop (+ i 1))))))])
    (for-each (λ (x) (atom->normal x)) (circle-list cir))
    (let loop ([i 0])
      (if (< i (vector-length vec))
          (begin
            (if (= (vector-ref vec i) -1)
                (vector-set! vec i i)
                #t)
            (loop (+ i 1)))
          #t))
    (circle vec (circle-order cir))))

(define (normal->simply cir)
  (define mark (make-vector (+ (circle-order cir) 1) #f))
  (define (set-mark! x) (vector-set! mark x #t))
  (define (get-mark x) (vector-ref mark x))
  (define vec (circle-list cir))
  (define (normal->atom vec i first)
    (if (get-mark i)
        '()
        (let ([value (vector-ref vec i)])
          (set-mark! i)
          (if (= first i)
              (list value)
              (cons value
                    (normal->atom vec value first))))))
  (define (search i)
    (if (< i (vector-length vec))
        (cons (normal->atom vec (vector-ref vec i) i)
              (search (+ i 1)))
        '()))
  (circle
   (reverse
    (foldl (λ (x res) (if (or (null? x) (= (length x) 1))
                        res
                        (cons x res))) '() (search 0)))
   (circle-order cir)))

(define (vector-merge! x y)
  (let loop ([i 0])
    (if (< i (vector-length x))
        (begin
          (vector-set! x i (vector-ref y (vector-ref x i)))
          (loop (+ i 1)))
        #t)))

(define (circle-mult cir-y cir-x)
  (let ([normal-x (simply->normal cir-x)]
        [normal-y (simply->normal cir-y)])
    (vector-merge! (circle-list normal-x)
                   (circle-list normal-y))
    (normal->simply normal-x)))

(define (circle^n cir n)
  (if (= n 1)
      cir
      (circle-mult cir (circle^n cir (- n 1)))))

(define (circle-e n) (circle '(()) n))

(define (vector-equal? x y)
  (let loop ([i 0])
    (if (> (vector-length x) i)
        (if (= (vector-ref x i)
               (vector-ref y i))
            (loop (+ i 1))
            #f)
        #t)))

(define (circle-equal? cir-x cir-y)
  (let ([normal-x (simply->normal cir-x)]
        [normal-y (simply->normal cir-y)])
    (vector-equal? (circle-list normal-x)
                   (circle-list normal-y))))
    
;(circle-mult (circle '((0 1 2)) 5)
;            (circle '((3 4)) 5))

;(circle-mult (circle '((1 3 0)) 5)
;            (circle-mult (circle '((1 3 0)) 5)
;                          (circle '((1 3 0)) 5)))

(define (all-Sym_n n)
  (define all-vec (vector-permutations (build-vector n (λ (x) x))))
  (map (λ (x) (normal->simply (circle x n))) all-vec))

(define (all-gen-subgroup cir)
  (define (iter n)
    (let ([value (circle^n cir n)])
      (if (circle-equal? value (circle-e (circle-order cir)))
          (list value)
          (cons value (iter (+ n 1))))))
  (iter 1))

(define (circle-n? cir n)
  (if (null? (circle-list cir))
      #f
      (if (= (length (car (circle-list cir))) n)
          #t
          #f)))

(define (equal?-l l value)
  (if (equal? (member value l circle-equal?) #f)
      #f
      #t))

(define (all-prime-subgroup n prime)
  (define all-group (all-Sym_n n))
  (define (iter groups)
    (if (null? groups)
        '()
        (if (circle-n? (car groups) prime)
            (let ([subgroup (all-gen-subgroup (car groups))])
              (cons subgroup
                    (iter (filter (λ (x) (not (equal?-l subgroup x)))
                                  (cdr groups)))))
            (iter (cdr groups)))))
  (iter all-group))

;(all-Sym_n 4)
;(all-prime-subgroup 4 3)
(all-prime-subgroup 6 5)

;(all-gen-subgroup (circle '((0 2 1 3)) 4))