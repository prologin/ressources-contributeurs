#lang racket
(require racket/block)

(define (recette0 n ordre desordre)
  ; Inserez votre code ici 
  '()
)

(define main
  (let ([n (string->number (read-line))])
  (let ([ordre (list->vector (map string->number (regexp-split " " (read-line))))])
  (let ([desordre (list->vector (map string->number (regexp-split " " (read-line))))])
  (block
    (recette0 n ordre desordre)
    '()
    ))))
)

