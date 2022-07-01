(define (pascals-triangle n)
  (if (< n 3)
      n
      (+
       (pascals-triangle (- n 1))
       (* 2 (pascals-triangle (- n 2)))
       (* 3 (pascals-triangle (- n 3))))))
