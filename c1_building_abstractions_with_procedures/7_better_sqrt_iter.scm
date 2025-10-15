(load "utils.scm") ; for (println x)

; implement `good-enough?` by monitoring every guess, until it changes little
(define (sqrt-iter guess x)
  (define (helper guess-new guess-old)

    (define (good-enough? guess-new guess-old)
      (< (abs (- (/ guess-old guess-new) 1)) 0.00001))

    (define (improve guess-new x)
      (define (average x y)
        (/ (+ x y) 2))
      (average guess-new (/ x guess-new)))

    (if (good-enough? guess-new guess-old)
      guess-new
      (helper (improve guess-new x) guess-new)))

  (helper guess 0))

(println (sqrt-iter 1 3))
(println (sqrt-iter 0.0001 0.000003))
(println (sqrt-iter 1000 3000000))
