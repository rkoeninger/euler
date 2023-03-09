! 2520 is the smallest number that can be divided by each of
! the numbers from 1 to 10 without any remainder.
! What is the smallest positive number that is evenly divisible by
! all of the numbers from 1 to 20?

USE: kernel
USE: math
USE: math.functions
USE: math.primes
USE: prettyprint
USE: sequences
IN: euler5

: euler5 ( -- )
    20 primes-upto dup
    [ 20 swap logn >integer ] map
    [ ^ ] 2map
    product . ;

MAIN: euler5
