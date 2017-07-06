! Find the first 1000-digit Fibonacci number.

USE: kernel
USE: math
USE: math.functions
USE: prettyprint
USE: sequences
IN: euler25

: euler25 ( -- )
    1 0 1
    [ dup log10 999 < ]
    [ swap over + [ 1 + ] 2dip ]
    while
    2drop . ;

MAIN: euler25
