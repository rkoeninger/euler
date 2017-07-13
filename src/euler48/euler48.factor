! Find the last ten digits of the series
! 1^1 + 2^2 + 3^3 + ... + 1000^1000.

USE: kernel
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler48

: euler48 ( -- )
    1000 [1,b]
    [ dup ^ ] map
    sum 10 10 ^ mod . ;

MAIN: euler48
