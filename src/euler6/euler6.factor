! The sum of the squares of the first ten natural numbers is,
! 1^2 + 2^2 + ... + 10^2 = 385
! The square of the sum of the first ten natural numbers is,
! (1 + 2 + ... + 10)^2 = 55^2 = 3025
! Hence the difference between the sum of the squares of the first
! ten natural numbers and the square of the sum is 3025 − 385 = 2640.
! Find the difference between the sum of the squares of the first
! one hundred natural numbers and the square of the sum.

USE: kernel
USE: math
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler6

: euler6 ( -- )
    100 [1,b]
    [ sum sq ]
    [ [ sq ] map-sum ]
    bi - . ;

MAIN: euler6
