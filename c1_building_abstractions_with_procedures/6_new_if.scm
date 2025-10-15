(load "utils.scm") ; for (println x)

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 1))
  (define (improve guess x)
    (define (average x y)
      (/ (+ x y) 2))
    (average guess (/ x guess)))

  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; seems to work fine
(println (new-if (= 2 3) 0 5))
(println (new-if (= 1 1) 0 5))

; infinite loop, since argumments will be evalueated before
; predicate actually works
(println (sqrt-iter 1 3))
