! The first two consecutive numbers to have two distinct
! prime factors are:

! 14 = 2 × 7
! 15 = 3 × 5

! The first three consecutive numbers to have three distinct
! prime factors are:

! 644 = 2² × 7 × 23
! 645 = 3 × 5 × 43
! 646 = 2 × 17 × 19

! Find the first four consecutive integers to have four distinct
! prime factors each. What is the first of these numbers?

USE: combinators
USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.primes
USE: prettyprint
IN: euler47

: factor-out ( x y -- z )
    [ 2dup divisor? ]
    [ dup [ / ] dip ]
    while
    drop ;

:: 4-prime-factors? ( x n p -- ? )
    {
        { [ n 4 >= ] [ t ] }
        { [ n 3 = x 1 > and ] [ t ] }
        { [ p x sqrt > ] [ f ] }
        [
            x p factor-out
            x p divisor? 1 0 ? n +
            p next-prime
            4-prime-factors?
        ]
    } cond ;
recursive

: euler47 ( -- )
    0 1
    [ over 4 < ]
    [
        dup 0 2 4-prime-factors?
        [ [ 1 + ] dip ]
        [ [ drop 0 ] dip ]
        if
        1 +
    ]
    while
    nip 4 - . ;

MAIN: euler47
