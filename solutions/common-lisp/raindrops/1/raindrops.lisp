(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun divides? (number divisor)
  (zerop (mod number divisor)))

(defun empty? (str)
  (= (length str) 0))

(defun convert (n)
   (let ((sound
     (concatenate 'string 
      (if (divides? n 3) "Pling" "") 
      (if (divides? n 5) "Plang" "") 
      (if (divides? n 7) "Plong" ""))))

  (if (empty? sound) (princ-to-string n) sound)))
