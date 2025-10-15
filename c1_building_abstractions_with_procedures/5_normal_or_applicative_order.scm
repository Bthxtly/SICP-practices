(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))

; the applicative-order interpreter will lead to an infinite loop
; and the normal-order interpreter will expand the code as
; (if (= 0 0)
;   0
;   (p))
; and will return a `0`
