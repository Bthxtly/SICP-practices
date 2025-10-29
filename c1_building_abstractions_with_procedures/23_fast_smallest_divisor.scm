(define (fast-smallest-divisor n)
  (define (find-divisor n test-divisor)
    (define (square x)
      (* x x))
    (define (divides? a b)
      (= (remainder b a) 0))
    (define (next test-divisor)
      (if (= test-divisor 2)
        3
        (+ test-divisor 2)))
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

  (find-divisor n 2))

(load "utils.scm") ; for (println x)

(println (fast-smallest-divisor 199))
(println (fast-smallest-divisor 1999))
(println (fast-smallest-divisor 19999))
