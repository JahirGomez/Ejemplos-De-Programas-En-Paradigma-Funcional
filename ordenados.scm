#lang racket
(define (ordenado? lista)
  (if (null? lista)
    #t
    (if (< (car lista)(car (cdr lista)))
      (if (null? (cddr lista))
        #t
        (ordenado? (cdr lista))
      )
      #f
    )
  )
)

(ordenado? '(9 8 7 6 5 4))
