(define called 0)

(define (reminder a b)
  (set! called (+ called 1))
  (if (< a b)
    a
    (reminder (- a b) b)))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (reminder a b))))

(load "utils.scm") ; for (println x)

(println (gcd 206 40)) ; 2
(println called)
