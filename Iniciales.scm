#lang racket
(define (toString0 a)
  (string-ref (~a a) 0)
)

(define (toString1 a)
  (string-ref (~a a) 1)
)

(define (in lista1 lista2)
  (if (null? lista1)
    (print lista2)
    (cond
    ((equal? (string-ref (~a lista1) 0) "(") ((in (cdr lista1) (list lista2 (toString1 (car lista1))))))
    (else  (in (cdr lista1) (list lista2 (toString0 (car lista1)))))
    )
  )
)

(define (iniciales lista)
  (if (null? lista)
    (print lista)
    (in lista '())
  )
)

(iniciales '(Lenguajes y Paradigmas de Programación))
