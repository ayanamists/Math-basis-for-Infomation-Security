#lang racket

(define gcd
  (λ(x y)
    (if (= (modulo x y) 0)
        y
        (gcd y (modulo x y)))))

(define ext-gcd-print
  (λ(result x y)
    (printf "$$ ~a = ~a \\times ~a + ~a \\times ~a $$~n"
                    (car result)
                    (cadr result)
                    x
                    (caddr result)
                    y)))

(define ext-gcd
  (λ(x y)
    (let ([rem (modulo x y)]
          [quo (floor (/ x y))])
      (if (= rem 0)
          (begin
            ; (ext-gcd-print (list y 0 1) x y)
            (list y 0 1))
          (let* ([rest (ext-gcd y (modulo x y))]
            [result
              (list
               (car rest)
               (caddr rest)
               (-
                (cadr rest)
                (* (caddr rest)
                   quo)))])
            (ext-gcd-print result x y)
            result)))))

(define n-ext-gcd
  (λ(list)
    (if (null? (cdr list))
        (cons (car list) '(1))
        (let ([res (n-ext-gcd (cdr list))])
          (let ([this (ext-gcd (car res) (car list))])
            (cons (car this)
                  (cons (caddr this)
                        (map (λ(x) (* x (cadr this))) (cdr res)))))))))

(define n-ext-gcd-print
  (λ(a-list v-list)
    (define iter
      (λ(a v str)
        (if (null? (cdr v))
            (string-append str (format "~a \\times ~a" (car v) (car a)))
            (iter (cdr a) (cdr v)
                  (string-append str (format "~a \\times ~a +" (car v) (car a)))))))
    (string-append "$$ " (format "~a = " (car a-list))
                   (iter (cdr a-list) v-list "") " $$\n")))

(define n-solve
  (λ(list)
    (display (n-ext-gcd-print (n-ext-gcd list) list))))
            
; (n-solve '(7 10 15))
; (n-solve '(70 98 105))
; (n-solve '(180 330 405 590))

; (ext-gcd 10 3)
; (ext-gcd 55 85)
; (ext-gcd 1613 3589)
; (ext-gcd 2947 3772)
; (ext-gcd 20041 37516)
; (ext-gcd 1107 822916)

(ext-gcd 7 4)

(define lcm
  (λ(x y)
    (/
     (* x y)
     (gcd x y))))

(lcm 8 60)
(lcm 14 18)
(lcm 49 77)
(lcm 132 253)

