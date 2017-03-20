! If we list all the natural numbers below 10 that are multiples of 3 or 5,
! we get 3, 5, 6 and 9. The sum of these multiples is 23.
! Find the sum of all the multiples of 3 or 5 below 1000.

USE: math
USE: math.functions
USE: math.ranges
USE: present
USE: io
IN: euler1

: euler1 ( -- )
    1000 [0,b)
    [ [ 3 divisor? ] [ 5 divisor? ] bi or ] filter
    sum
    present print ;

MAIN: euler1
