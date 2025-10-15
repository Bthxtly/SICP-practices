(load "utils.scm") ; for (println x) and (accumulate op init seq)

; implement map, append, length with accumulate
(define (acc-map p sequence)
  (accumulate (lambda (x y) 
                (if (p x)
                  (cons x y)
                  y))
              '()
              sequence))

(define (acc-append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (acc-length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))

(println (acc-map even? (list 1 2 3 4 5)))
(println (acc-append (list 1 2 3) (list 4 5 6)))
(println (acc-length (list 1 2 3 4 5)))
