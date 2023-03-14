! Considering quadratics of the form:
! n^2+a*n+b, where -1000 < a < 1000 and 1000 ≤ b ≤ 1000,
! find the product of the coefficients, a and b, for the
! quadratic expression that produces the maximum number of
! primes for consecutive values of n, starting with n = 0.

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler27

: quad ( b a n -- x )
    dup 2 ^ -rot * + + ;

:: prime-count ( b a -- num )
    0
    [ dup b a rot quad prime? ]
    [ 1 + ]
    while ;

: euler27 ( -- )
    -1000 1000 2dup (a,b) -rot [a,b]
    cartesian-product concat
    [ first2 prime-count ] supremum-by
    first2 * . ;

MAIN: euler27
