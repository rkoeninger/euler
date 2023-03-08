! Interestingly, φ(87109)=79180, and it can be seen that
! 87109 is a permutation of 79180.

! Find the value of n, 1 < n < 10^7, for which φ(n) is a
! permutation of n and the ratio n/φ(n) produces a minimum.

USE: combinators.short-circuit
USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.order
USE: math.parser
USE: math.primes.factors
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sorting
IN: euler70

: permutation? ( x y -- ? )
    {
        [ [ log10 >integer ] bi@ = ]
        [ [ number>string [ <=> ] sort ] bi@ = ]
    } 2&& ;

: euler70 ( -- )
    1 10000000 (a,b)
    [ dup totient permutation? ] filter
    [ dup totient / ] infimum-by . ;

MAIN: euler70
