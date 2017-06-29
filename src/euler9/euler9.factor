! There exists exactly one Pythagorean triplet for
! which `a + b + c = 1000`. Find the product `abc`.

USE: io
USE: kernel
USE: lists.lazy
USE: math
USE: math.ranges
USE: present
USE: sequences
IN: euler9

: triplet? ( a b c -- ? )
    sq swap sq + swap sq = ;

: sum1000? ( a b c -- ? )
    + + 1000 = ;

: answer? ( a b c -- ? )
    [ triplet? ] [ sum1000? ] bi and ;

: search-space ( -- xsss )
    500 iota
    500 iota
    500 iota
    cartesian-product concat
    swap [ prefix ] cartesian-map concat ;

: euler9 ( -- )
    search-space
    [
        [ first ]
        [ second ]
        [ third ]
        tri
        answer?
    ]
    find drop
    present print ;

MAIN: euler9
