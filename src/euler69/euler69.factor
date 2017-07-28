! It can be seen that n=6 produces a maximum n/φ(n) for n ≤ 10.

! Find the value of n ≤ 1,000,000 for which n/φ(n) is a maximum.

USE: kernel
USE: math
USE: math.primes.factors
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler69

: euler69 ( -- )
    2 1000000 [a,b]
    [ dup totient / ] supremum-by . ;

MAIN: euler69
