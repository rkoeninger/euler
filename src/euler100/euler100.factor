! A box contains n=21 coloured discs, composed of b=15 blue and r=6 red,
! and take 2 randomly, the probability of taking two 2 discs is 1/2.

! The next such arrangement, for which there is exactly 1/2 chance of
! taking 2 blue, is b=85, r=35, n=120.

! Find b for the first n > 10^20 for which there is exactly 1/2 chance
! of taking 2 blue.

USE: locals
USE: math.functions
USE: math.ranges
IN: euler100

: n->b1 ( n -- b1 ) 2 sqrt / floor >integer ;
: n->b2 ( n -- b2 ) 2 sqrt / ceiling >integer ;
: n->bs ( n -- b1 b2 ) [ n->b1 ] [ n->b2 ] bi ;
: bn? ( b n -- ? ) 2dup / -rot [ 1 - ] bi@ / * 1 2 / = ;

:: n? ( n -- ? ) n n->bs [ n bn? ] bi@ or ;

:: n->b ( n -- b )
    n n->b1 n bn?
    [ n n->b1 ]
    [
        n n->b2 n bn?
        [ n n->b2 ]
        [ f ]
        if
    ]
    if ;

: euler100 ( -- )
    1070379110495 dup 10 + (a,b] ! TODO: artifically constrained range because of poor performance
    [ n? ] find nip
    dup [ n->b ] when . ;

MAIN: euler100
