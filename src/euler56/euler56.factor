! Considering natural numbers of the form, a^b, where
! a < 100, b < 100, what is the maximum sum of digits?

USE: kernel
USE: math.functions
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler56

: euler56 ( -- )
    100 [1,b) dup
    [ ^ number>string string>digits sum ] cartesian-map concat
    supremum . ;

MAIN: euler56
