(define (smallest-divisor n)
  (define (find-divisor n test-divisor)
    (define (square x)
      (* x x))
    (define (divides? a b)
      (= (remainder b a) 0))
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

  (find-divisor n 2))

(load "utils.scm") ; for (println x)

(println (smallest-divisor 199))
(println (smallest-divisor 1999))
(println (smallest-divisor 19999))
