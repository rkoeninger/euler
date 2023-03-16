! nCr =	n! / r!(n−r)!, where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
! It is not until n = 23, that a value exceeds one-million: 23 nCr 10 = 1144066.
! How many, not necessarily distinct, values of nCr,
! for 1 ≤ n ≤ 100, are greater than one-million?

USE: combinators.short-circuit
USE: kernel
USE: math
USE: math.combinatorics
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler53

: euler53 ( -- )
    100 [1,b] dup cartesian-product concat
    [ first2 { [ > ] [ nCk 1000000 > ] } 2&& ] count . ;

MAIN: euler53
