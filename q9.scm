(define pyth-no (lambda ()
		  (letrec ((a-max 332)
			   (find-a (lambda (a)
				     (letrec ((b-max (- (inexact->exact (/ (- 1000 a) 2)) 1))
					      (find-b (lambda (b)
							(let ((c (- 1000 (+ a b))))
							  (if (eq? (+ (* a a) (* b b)) (* c c))
							      b
							      (if (> (+ b 1) b-max)
								  0
								  (find-b (+ b 1)))))))
					      (b (find-b (+ a 1))))
				       (if (eq? b 0)
					   (if (> (+ a 1) a-max)
					       0
					       (find-a (+ a 1)))
					   `(,a ,b ,(- 1000 (+ a b))))))))
		    (find-a 1))))