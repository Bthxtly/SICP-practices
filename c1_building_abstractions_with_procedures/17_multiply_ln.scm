(define (multiply a b)
  (cond ((= b 1) a)
        ((even? b) (multiply (double a) (halve b)))
        (else (+ a (multiply (double a) (halve (- b 1)))))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(load "utils.scm") ; for (println x)

(println (multiply 7 8))
(println (multiply 70 80))
(println (multiply 700 800))
