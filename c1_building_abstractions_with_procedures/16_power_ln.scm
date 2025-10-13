(define (power b n)
  (define (fast-power a b n)
    (cond ((= n 0)
           a)
          ((even? n)
           (fast-power a (* b b) (/ n 2)))
          (else
            (fast-power (* a b) (* b b) (/ (- n 1) 2)))))

  (fast-power 1 b n))

(load "utils.scm") ; for (println x)

(println (power 2 10))
(println (power 9 7))
