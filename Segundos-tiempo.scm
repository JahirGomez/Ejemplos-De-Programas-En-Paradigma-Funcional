#lang racket
(define (toMinutes num)
  (string-append (~a (/ num 60)) " minutos")
)

(define (toHours num)
  (string-append (~a (/ num 3600)) " horas")
)

(define (toDays num)
  (string-append (~a (/ num 86400)) " días")
)

(define (toWeeks num)
  (string-append (~a (/ num 604800)) " semanas")
)

(define (toMonths num)
  (string-append (~a (/ num 2592000)) " meses")
)

(define (toYears num)
  (string-append (~a (/ num 31536000)) " años")
  )

(define (segundos-tiempo numero tipo)
  (cond
    ((equal? tipo "segundos") (string-append (~a numero) " segundos"))
    ((equal? tipo "minutos") (toMinutes numero))
    ((equal? tipo "horas") (toHours numero))
    ((equal? tipo "dias") (toDays numero))
    ((equal? tipo "semanas") (toWeeks numero))
    ((equal? tipo "meses") (toMonths numero))
    ((equal? tipo "años") (toYears numero))
    (else (print "error! Tipo no especificado"))
  )
)

(segundos-tiempo 60 "horas")
(segundos-tiempo 18439 "semanas")
(segundos-tiempo 94608000 "años")
