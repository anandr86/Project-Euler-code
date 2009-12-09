(define diff-sumsq-sqsum (lambda (n)
			   (let ((sumsq (* (/ (* n (+ n 1)) 2) (/ (* n (+ n 1)) 2)))
				 (sqsum (/ (* n (+ n 1) (+ (* 2 n) 1)) 6)))
			     (- sumsq sqsum))))