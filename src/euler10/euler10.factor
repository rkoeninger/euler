! Find the sum of all the primes below two million.

USE: io
USE: kernel
USE: math
USE: math.functions
USE: math.order
USE: math.ranges
USE: present
USE: sequences
USE: vectors
IN: euler10

: take-until-slice ( xs q -- ys )
    dupd find
    over f =
    [ 2drop ]
    [ drop head-slice ]
    if ;
inline

: divisor-any? ( ps n -- ? )
    dup -rot
    sqrt ceiling >integer
    [ > ] curry take-until-slice
    swap [ swap divisor? ] curry any? ;

: primes ( ps0 lim n -- ps )
    2dup <
    [ 2drop ]
    [
        swapd 2dup
        divisor-any?
        [ ]
        [ swap over suffix swap ]
        if
        swapd
        1 +
        primes
    ]
    if ;
recursive

! TODO: this is really slow

: euler10 ( -- )
    { } 2000000 2 primes sum
    present print ;

MAIN: euler10
