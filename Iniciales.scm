#lang racket
(define (iniciales lista)
  (map (lambda (caracter)
         (string->symbol
          (string
           (string-ref
            (symbol->string caracter) 0))))
       lista)
  )
(iniciales '(Lenguajes y Paradigmas de Programación))
