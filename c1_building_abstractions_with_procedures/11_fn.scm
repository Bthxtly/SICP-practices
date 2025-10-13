(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (f-loop n-1 n-2 n-3 nth)
    (if (= n nth)
        n-1  ; Final result of the computation
        (f-loop (+ n-1 (* 2 n-2) (* 3 n-3))  ; Compute f(n)
                n-1
                n-2 
                (+ 1 nth))))
  (if (< n 3)
      n
      (f-loop 2 1 0 2)))

(define n 10)

(load "utils.scm") ; for (println x)

(println (f-recursive n))
(println (f-iterative n))
