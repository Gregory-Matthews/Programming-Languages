#lang racket
(require racket/stream)
(require racket/trace)
(require math/number-theory)

(define (stream-enumerate-interval low high)
  (if (> low high)
      empty-stream
      (stream-cons low (stream-enumerate-interval(+ low 1) high))))

(define (second-prime) 
(stream-first
 (stream-rest
  (stream-filter prime?
                 (stream-enumerate-interval 10000 1000000)))))

(trace second-prime)
(second-prime)

; Testing stream-enumerate-interval function
(define (unit-test)
  {stream-enumerate-interval 0 10})

(trace unit-test)
(unit-test)






