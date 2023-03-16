! Find the smallest positive integer, x, such that
! 2*x, 3*x, 4*x, 5*x, and 6*x, contain the same digits.

USE: kernel
USE: lists
USE: lists.lazy
USE: locals
USE: math
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sets
USE: sorting
IN: euler52

:: answer? ( x -- ? )
    { 2 3 4 5 6 } [ x * number>string natural-sort ] map cardinality 1 = ;

: euler52 ( -- )
    1 lfrom [ answer? ] lfilter car . ;

MAIN: euler52
