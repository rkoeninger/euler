! Considering quadratics of the form:
! n^2+a*n+b, where -1000 < a < 1000 and 1000 ≤ b ≤ 1000,
! find the product of the coefficients, a and b, for the
! quadratic expression that produces the maximum number of
! primes for consecutive values of n, starting with n = 0.

USE: kernel
USE: lists
USE: lists.lazy
USE: locals
USE: math
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler27

:: prime-count ( a b -- l )
    0 lfrom [| n | n a + n * b + prime? ] lwhile llength ;

: euler27 ( -- )
    -1000 1000 [ (a,b) ] [ [a,b] ] 2bi
    cartesian-product concat
    [ first2 prime-count ] supremum-by
    first2 * . ;

MAIN: euler27
