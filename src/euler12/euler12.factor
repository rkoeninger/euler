! The sequence of triangle numbers is generated by adding the natural numbers.
! T(n) = 1 + 2 + ... + n
! T(7) = 1 + ... + 7 = 28
! The divisors of 28 are 1, 2, 4, 7, 14, 28
! What is the value of the first triangle number to have over 500 divisors?

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler12

: triangle ( n -- x )
    dup 1 + * 2 / ;

:: divisor-count ( x -- n )
    x sqrt >integer [1,b]
    [ x swap divisor? ] count 2 *
    x sqrt integer? [ 1 - ] when ;

: euler12 ( -- )
    100000 [1,b]
    [ triangle ] map
    [ divisor-count 500 > ] find nip . ;

MAIN: euler12
