(define sn-fibo (lambda ()
		  (letrec ((sum (lambda (s n1 n2)
				  (if (>= n2 4000000)
				      s ;return sum
				      (let ((n3 (+ n1 n2)))
					(sum (+ s n3) (+ n2 n3) (+ n3 n2 n3 )))))))
		    (sum 0 1 1))))