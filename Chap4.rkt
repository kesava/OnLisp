(define group
  (lambda (list n)
    (define group-n-internal
      (lambda (list acc subgroup-acc subgroup-counter)
        (cond
          ((null? list) (reverse (cons (reverse subgroup-acc) acc)))
          ((= subgroup-counter 1) (group-n-internal (cdr list) (cons (reverse subgroup-acc) acc) (cons (car list) '()) n))
          (else (group-n-internal (cdr list) acc (cons (car list) subgroup-acc) (- subgroup-counter 1))))))
    (group-n-internal list '() '() (+ n 1))))
