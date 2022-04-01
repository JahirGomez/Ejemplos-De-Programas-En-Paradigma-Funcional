#lang racket/base
(define tree '(40 (28 (9 () ()) (32 () ())) (70 (52 () ()) (102 () ()))))

(define (maximo lista max)
(cond
  ((null? lista) max)
  ((> (car lista)max) (maximo(cdr lista) (car lista)))
  (else (maximo (cdr lista)max))))
  
(define (enorden ar)
(cond
  ((null? ar) '())
  (else (append
    (enorden (cadr ar))
    (if (list? (car ar)) (car ar) (list (car ar)))
    (enorden(caddr ar))))))

(write "Nodo maximo: ")
(maximo (enorden tree) (car(enorden tree)))
