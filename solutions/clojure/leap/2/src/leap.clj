(ns leap)

(defn divides? [number divisor]
  (zero? (mod number divisor)))

(defn leap-year? [year] ;; <- argslist goes here
  (cond
    (divides? year 400) true
    (divides? year 100) false
    (divides? year 4) true
    :else false))
