(use '[clojure.contrib.math :only (sqrt)])

(defn prime? [prime-list no limit]
  (let [prime-1? (fn [prime-list no]
		   (if (empty? prime-list)
		     true
		     (if (> (first prime-list) limit)
		       true
		       (if (= (rem no (first prime-list)) 0)
			 false
			 (recur (subvec prime-list 1) no)))))]
    (prime-1? prime-list no)))

(defn prime-gen [end]
  (let [prime-gen-1 (fn [prime-list n add]
		      (if (> n end)
			prime-list
			(let [add1 (if (= add 2) 4 2)]
			  (if (prime? prime-list n (sqrt n))
			    (recur (conj prime-list n) (+ add n) add1)
			    (recur prime-list (+ add n) add1)))))]
    (prime-gen-1 [3] 5 2)))