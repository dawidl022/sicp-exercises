(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+
               (fib (- n 1))
               (fib (- n 2))))))

(define (fib n)
  (define (fib-iter a b counter)
    (if (= counter n)
        a
        (fib-iter (+ a b) a (+ counter 1))))
  (if (= n 0) 0 (fib-iter 1 0 1)))
