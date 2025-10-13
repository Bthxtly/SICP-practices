; get the fixed point of f(x), step from x := guess
(define (fixed-point f guess)
  (define (close? a b)
    (let ((epsilon 0.00001))
      (and (< (- a b) epsilon) (< (- b a) epsilon))))
  (let ((next (f guess)))
    (if (close? next guess)
      next
      (fixed-point f next)))
  )

; get the derivation of g(x)
(define (derive g)
  (let ((dx 0.00001))
    (lambda (x)(/ (- (g (+ x dx)) (g x)) dx))))

; return a function f(x) = x - g(x)/g'(x)
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((derive g) x)))))

; apply newton's method to g(x), step from x := guess
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

; get the sqrt with newton's method
(define (sqrt x)
  (newtons-method
    (lambda (y) (- (square y) x))
    1.0))

(define (square x)
  (* x x))

; test
(load "utils.scm") ; for (println x)

(println (sqrt 10))
