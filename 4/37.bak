(#%require (only racket/base random))
(#%require math/number-theory)

(define (modulo-muti a b p)
  (modulo (* a b) p))

(define fast-pow
  (lambda (a b p)
    (if (= b 0)
        1
        (let ((ret (fast-pow a (floor (/ b 2)) p)))
          (if (= (modulo b 2) 1)
              (modulo-muti (modulo-muti ret ret p) a p)
              (modulo-muti ret ret p))))))

(define Euler-pre
  (lambda (a p)
    (= 1 (fast-pow a (/ (- p 1) 2) p))))

(define (rand-choose p)
  (let ((this-time (random p)))
    (if (or
         (= (modulo this-time p) 0)
         (Euler-pre this-time p))
        (rand-choose p)
        this-time)))

(define (get-2^n p)
  (if (= (modulo p 2) 0)
      (let ((res (get-2^n (/ p 2))))
        (cons (+ (car res) 1)
              (cdr res)))
      (cons 0 p)))

(define (pow a b)
  (if (= b 0)
      1
      (* a (pow a (- b 1)))))

(define (solve-quad-res a p)
  (define a-1 (modular-inverse a p))
  (define t (car (get-2^n (- p 1))))
  (define s (cdr (get-2^n (- p 1))))
  (define b (fast-pow 3 25 p))
  (define (solve x_t t-k)
    (if (= t-k 0)
        x_t
        (let* ((a-1x^2 (modulo-muti a-1 (modulo-muti x_t x_t p) p))
              (y^t-k-1 (fast-pow a-1x^2 (pow 2 (- t-k 1)) p)))
          (solve
           (if (= y^t-k-1 1)
               x_t
               (modulo-muti x_t (fast-pow b (pow 2 (- (- t 1) t-k)) p) p))
           (- t-k 1)))))
  (solve (fast-pow a (/ (+ s 1) 2) p) (- t 1)))

(solve-quad-res 186 401)
(solve-quad-res 2 401)
(solve-quad-res 3 401)
(solve-quad-res 5 401)
(solve-quad-res 7 401)
(solve-quad-res 11 401)