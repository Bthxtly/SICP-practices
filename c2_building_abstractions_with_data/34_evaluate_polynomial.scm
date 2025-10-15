(load "utils.scm") ; for (println x)

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))

; calculate `1+3x+5x³+x⁵` when `x=2`
(println (horner-eval 2 (list 1 3 0 5 0 1)))
