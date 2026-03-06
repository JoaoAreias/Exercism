(ns reverse-string)

(defn reverse-string [s] ;; <- arglist goes here
  (if (empty? s)  
    "" 
    (str (last s) (reverse-string (drop-last s))))
)
