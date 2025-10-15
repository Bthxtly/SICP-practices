(define (multiply a b)
  (define (fast_mul_iter a b c)
    (cond ((= b 1) (+ a c))
          ((even? b) (fast_mul_iter (double a) (halve b) c))
          (else (fast_mul_iter (double a) (halve (- b 1)) (+ a c)))))

  (fast_mul_iter a b 0))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(load "utils.scm") ; for (println x)

(println (multiply 7 8))
(println (multiply 70 80))
(println (multiply 700 800))
