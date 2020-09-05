#lang racket

(define gen
  (lambda (m op)
    (define sym->func
      (lambda (what)
	(case what
	  [(+) (lambda (x y) (modulo (+ x y) m))]
	  [(*) (lambda (x y) (modulo (* x y) m))])))
    (define get-xy-str
      (lambda (x y)
  	(format
	  "$$ C_{~a} ~a C_{~a} = C_{~a}$$~n"
	  x
	  (symbol->string op)
	  y
	  ((sym->func op) x y))))
    (define iter
      (lambda (x y str)
	(printf "~a, ~a ~n" x y)
	(if (= x m)
	  str
	  (let ([this-str
		  (string-append str (get-xy-str x y))])
	    (if (= y (- m 1))
	      (iter (+ x 1) (+ x 1) this-str)
	      (iter x (+ y 1) this-str))))))
   (iter 0 0 "")))

(display (gen 11 '+))
(display (gen 11 '*))
