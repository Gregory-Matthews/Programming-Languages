#lang racket
(require racket/trace)
(require math/number-theory)
(require "lazymceval.rkt")

(define (enumerate-interval low high)
  (if (> low high)
      empty
      (cons low (enumerate-interval(+ low 1) high))))

(define (second-prime) 
    (car
      (cdr
         (filter prime?
            (enumerate-interval 10000 1000000)))))

(trace second-prime)
(second-prime)

;; Testing enumerate-interval function
(define (unit-test)
	 (enumerate-interval 0 10))
(trace unit-test)
(unit-test)