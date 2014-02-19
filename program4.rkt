#lang racket
;Anthony Mace CSC240 1/31/14
;This program defines two functions.
;One to compute the nth term of an arithmetic sequence
;and another to compute the result of a power function.
;Both are done recursively.

;This function computes the nthTerm of an aritmetic sequence
;given the inital and nth term as well as the difference between
;each term
(define (arithmeticSequence initialTerm nthTerm difference)
  ( if (= nthTerm 0)
       initialTerm
       (+ 
        difference 
        (arithmeticSequence initialTerm (- nthTerm 1) difference)
       )
  )
)

;This function returns the value of a power function given the base
;and exponent values using the "fast power" algorithm
(define (powerFunction base exponent)
  (if (= exponent 0)
      1
      (if (even? exponent)
          (squareValue (powerFunction base (/ exponent 2)))
          (* 
           base 
           (squareValue (powerFunction base (/ (- exponent 1) 2)))
          )
      )
   )
)

;This function squares the given value
(define (squareValue value)
  (* value value)
)
      

          
  