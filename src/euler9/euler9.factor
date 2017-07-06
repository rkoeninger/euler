! There exists exactly one Pythagorean triplet for
! which `a + b + c = 1000`. Find the product `abc`.

USE: io
USE: kernel
USE: math
USE: math.ranges
USE: present
USE: sequences
IN: euler9

: goal? ( a b c -- ? )
    [ sq swap sq + swap sq = ]
    [ + + 1000 = ]
    3bi and ;

: inc ( a b c -- a' b' c' )
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
    * *
    present print ;

MAIN: euler9
