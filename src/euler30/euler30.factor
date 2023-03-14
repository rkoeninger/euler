! Find the sum of all the numbers that can be written as
! the sum of fifth powers of their digits. (Not including 1)

USE: kernel
USE: math
USE: math.functions
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler30

: digits ( n -- seq )
    number>string string>digits ;

: euler30 ( -- )
    2 200000 [a,b)
    [ dup digits [ 5 ^ ] map-sum = ] filter
    sum . ;

MAIN: euler30
