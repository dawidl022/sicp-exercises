(define (<= x y) (not (> x y)))

(define (delta x y)
  (abs (- x y)))

(define (avg x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (calc-root x improve)
  (define (find-root)
    (define precision 0.0000001)
    (define (good-enough? guess old-guess)
      (<= (delta 1 (/ guess old-guess)) precision))

    (define (root-iter guess old-guess)
      (if (good-enough? guess old-guess)
          guess
          (root-iter (improve x guess) guess)))
    (root-iter 1.0 0.1))
  (if (= x 0) 0 (find-root)))

(define (square-root x)
  (define (improve-sqrt x guess)
    (avg guess (/ x guess)))
  (calc-root x improve-sqrt))

(define (cube-root x)
  (define (improve-cbrt x guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (calc-root x improve-cbrt))
