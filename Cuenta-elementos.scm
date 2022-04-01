#lang racket
(define (cuenta elem lista cont)
  (cond
   ((null? lista) cont)
   ((equal? elem (car lista)) (cuenta elem (cdr lista) (+ cont 1)))
   (else (cuenta elem (cdr lista) cont))
  )
)




(define (pares l1 l2 l3)
(cond
  ((null? l1) l3)
  (else (pares (cdr l1) l2 (cons (list (car l1) (cuenta (car l1) l2 0)) l3)))))

(pares '(a b c e f) '(a b b b c d d a e e f a a) '())
(pares '(hola 3 2) '(hola hola 3 2 hola 3 2 3) '())
