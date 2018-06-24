#lang racket
(require racket/block)

(define (a_table0 n m salle)
  ; Inserez votre code ici 
  '()
)

(define main
  ((lambda (internal_env) (apply (lambda (n m) 
                                        (let ([de (build-vector n (lambda (df) 
                                                                    (list->vector (string->list (read-line)))))])
                                        (let ([salle de])
                                        (block
                                          (a_table0 n m salle)
                                          '()
                                          )))) internal_env)) (map string->number (regexp-split " " (read-line))))
)

