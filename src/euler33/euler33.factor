! The fraction 49/98 is a curious fraction, as an inexperienced
! mathematician in attempting to simplify it may incorrectly
! believe that 49/98 = 4/8, which is correct, is obtained by
! cancelling the 9s.

! We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

! There are exactly four non-trivial examples of this type of fraction,
! less than one in value, and containing two digits in the numerator
! and denominator.

! If the product of these four fractions is given in its lowest common
! terms, find the value of the denominator.

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler33

: ones ( x -- y )
    10 mod ;

: tens ( x -- y )
    10 /i ;

:: cancelling-fraction? ( n d -- n/d? )
    n d >=
    n d [ 10 divisor? ] either? or
    [ f ]
    [
        n ones d tens = n d / n tens d ones / = and
        n tens d ones = n d / n ones d tens / = and
        or
        [ n d / ]
        [ f ]
        if
    ]
    if ;

: euler33 ( -- )
    10 99 [a,b] dup
    [ cancelling-fraction? ] cartesian-map concat
    sift product >fraction nip . ;

MAIN: euler33
