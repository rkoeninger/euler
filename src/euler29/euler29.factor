! How many distinct terms are in the sequence generated
! by a^b for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100?

USE: kernel
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sets
IN: euler29

: euler29 ( -- )
    2 100 [a,b]
    dup [ ^ ] cartesian-map concat
    cardinality . ;

MAIN: euler29
