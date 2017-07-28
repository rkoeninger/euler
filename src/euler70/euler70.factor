! Interestingly, φ(87109)=79180, and it can be seen that
! 87109 is a permutation of 79180.

! Find the value of n, 1 < n < 107, for which φ(n) is a
! permutation of n and the ratio n/φ(n) produces a minimum.

USE: kernel
USE: math
USE: math.order
USE: math.primes.factors
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler70

: permutation? ( x y -- ? )
    [ [ <=> ] sort ] bi@ = ;

: euler70 ( -- )
    1 10000000 (a,b)
    [ dup totient permutation? ] filter
    [ dup totient / ] infimum-by . ;

MAIN: euler70
