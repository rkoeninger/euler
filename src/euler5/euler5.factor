! 2520 is the smallest number that can be divided by each of
! the numbers from 1 to 10 without any remainder.
! What is the smallest positive number that is evenly divisible by
! all of the numbers from 1 to 20?

USE: kernel
USE: math
USE: math.functions
USE: prettyprint
USE: sequences
IN: euler5

: euler5 ( -- )
    { 2 3 5 7 11 3 17 19 } dup
    [ 20 [ log ] bi@ swap / >integer ] map
    [ ^ ] 2map
    product . ;

MAIN: euler5
