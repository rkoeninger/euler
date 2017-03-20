! The sum of the squares of the first ten natural numbers is,
! 12 + 22 + ... + 102 = 385
! The square of the sum of the first ten natural numbers is,
! (1 + 2 + ... + 10)2 = 552 = 3025
! Hence the difference between the sum of the squares of the first
! ten natural numbers and the square of the sum is 3025 − 385 = 2640.
! Find the difference between the sum of the squares of the first
! one hundred natural numbers and the square of the sum.

USE: math
USE: math.ranges
USE: sequences
USE: present
USE: io
IN: euler6

: euler6 ( -- )
    1000 [1,b]
    [ sum sq ]
    [ [ sq ] map sum ]
    bi -
    present print ;

MAIN: euler6
