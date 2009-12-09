(define filter-func (lambda (x) (or (eq? (remainder x 3) 0) (eq? (remainder x 5) 0)))) ;check if no is a multiple of 3 or 5
(define count-crude (lambda ()
		      (apply + (filter filter-func (iota 999 1)))))

(define sn-ap (lambda (a1 d f) ; f defines the maximum limit till which series will be summed (includes f)
		(let* ((an (- f (remainder f d)))
		       (n (+ 1 (/ (- an a1) d))))
		  (/ (* n (+ a1 an)) 2))))
(define count-fast (lambda ()
		     (let ((x (sn-ap 3 3 999))
			   (y (sn-ap 5 5 999))
			   (z (sn-ap 15 15 999)))
		       (- (+ x y) z))))