(define divisorin? (lambda (n d ul)
		     (if (or (null? d) (> (car d) ul))
			 #f
			 (if (eq? (remainder n (car d)) 0)
			     #t
			     (divisorin? n (cdr d) ul)))))

(define genprime (lambda (ul)
		   (letrec ((genprime-1 (lambda (n pl)
					  (if (divisorin? n pl (inexact->exact (ceiling (sqrt n))))
					      (genprime-1 (+ n 1) pl)
					      (if (eq? (length pl) (- ul 1))
						  n ;(append pl (list n))
						  (genprime-1 (+ n 1) (append pl (list n))))))))
		     (genprime-1 3 '(2)))))