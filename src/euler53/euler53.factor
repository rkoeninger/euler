! There are exactly ten ways of selecting three from five, 12345:

! 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

! In combinatorics, we use the notation, 5 nCr 3 = 10.

! nCr =	n! / r!(n−r)!, where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
! It is not until n = 23, that a value exceeds one-million: 23 nCr 10 = 1144066.

! How many, not necessarily distinct, values of nCr,
! for 1 ≤ n ≤ 100, are greater than one-million?

USE: kernel
USE: math
USE: math.combinatorics
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler53

: nCk>1000000 ( n -- count )
    dup [1,b] swap
    [ swap nCk 1000000 > ] curry
    count ;

: euler53 ( -- )
    100 [1,b]
    [ nCk>1000000 ] map-sum . ;

MAIN: euler53
