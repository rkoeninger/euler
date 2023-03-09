! There exists exactly one Pythagorean triplet for
! which a + b + c = 1000. Find the product a * b * c.

USE: kernel
USE: math
USE: math.ranges
USE: prettyprint
IN: euler9

: goal? ( c b a -- ? )
    [ [ sq ] tri@ + = ]
    [ + + 1000 = ]
    3bi and ;

: inc ( c b a -- c' b' a' )
    1 +
    dup 500 >=
    [
        drop 1
        [ 1 + ] dip
        over 500 >=
        [
            [ drop 1 ] dip
            [ 1 + ] 2dip
        ]
        when
    ]
    when ;

: euler9 ( -- )
    1 1 1
    [ 3dup goal? not ]
    [ inc ]
    while
    * * . ;

MAIN: euler9
