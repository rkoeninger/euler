! Find the sum of all the primes below two million.

USE: math
USE: math.functions
USE: math.order
USE: math.ranges
USE: sequences
USE: present
USE: vectors
USE: io
IN: euler10

: divisor-any? ( ps n -- ? )
    [ swap divisor? ] curry any? ;

: primes ( ps0 lim n -- ps )
    2dup <
    [ 2drop ]
    [
        swapd 2dup
        divisor-any?
        [ ]
        [
            swap over
            1vector append
            swap
        ]
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
