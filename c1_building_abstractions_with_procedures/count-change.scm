(define (count-change-recursion amount)
  (define (helper amount coin-kind)
    (cond ((= coin-kind 1) 1)
          ((or (= amount 0) (< amount 0)) 0)
          (else (+ (helper (- amount (coin-value coin-kind)) coin-kind)
                   (helper amount (- coin-kind 1))))))

  (define (coin-value kind)
    (cond ((= kind 1) 1)
          ((= kind 2) 5)
          ((= kind 3) 10)
          ((= kind 4) 25)
          ((= kind 5) 50)))

  (helper amount 5))

(define amount 100)

(newline)
(display "You can make change of ")
(display amount)
(display " in ")
(display (count-change-recursion amount))
(display " ways")
