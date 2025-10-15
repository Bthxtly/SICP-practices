(define (println x)
  (display x)
  (newline))

(define (map_my proc sequence)
  (if (null? sequence)
    '()
    (cons (proc (car sequence))
          (map_my proc (cdr sequence)))))

(define (filter pred sequence)
  (cond ((null? sequence) '())
        ((pred (car sequence))
         (cons (car sequence)
               (filter pred (cdr sequence))))
        (else (filter pred (cdr sequence)))))

(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

; ; test
; (println (map_my (lambda (x) (* x x)) (list 1 2 3 4)))
; (println (filter odd? (list 1 2 3 4)))
; (println (accumulate + 0 (list 1 2 3 4)))
