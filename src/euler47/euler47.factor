! The first two consecutive numbers to have two distinct
! prime factors are:

! 14 = 2 × 7
! 15 = 3 × 5

! The first three consecutive numbers to have three distinct
! prime factors are:

! 644 = 2² × 7 × 23
! 645 = 3 × 5 × 43
! 646 = 2 × 17 × 19.

! Find the first four consecutive integers to have four distinct
! prime factors each. What is the first of these numbers?

USE: kernel
USE: math
USE: math.functions
USE: math.primes
USE: prettyprint
IN: euler47

:: 4-prime-factors? ( x -- ? )
    0 2
    [ dup x sqrt < ]
    [
        dup x swap divisor?
        [ [ 1 + ] dip ]
        when
        next-prime
    ]
    while
    drop 4 >= ;

: euler47 ( -- )
    0 1
    [ over 4 = ]
    [
        dup 4-prime-factors?
        [ 1 + ]
        [ drop 0 ]
        ? dip
        1 +
    ]
    while
    nip . ;

MAIN: euler47
