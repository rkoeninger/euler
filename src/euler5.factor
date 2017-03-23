! 2520 is the smallest number that can be divided by each of
! the numbers from 1 to 10 without any remainder.
! What is the smallest positive number that is evenly divisible by
! all of the numbers from 1 to 20?

USE: math
USE: math.functions
USE: math.order
USE: math.ranges
USE: sequences
USE: present
USE: vectors
USE: io
IN: euler5

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

! TODO: this can be done by just taking `pow(p, floor(log L / log p))`
!       for each prime `p` under the limit L (20) and multiplying them together.

: prime-pow ( x b -- n )
    2dup
    divisor?
    [ swap over / swap prime-pow 1 + ]
    [ 2drop 0 ]
    if ;
recursive

: euler5 ( -- )
    { } 20 2 primes dup dup
    [ drop 0 ] map swap
    2 20 [a,b] swap
    [ swap [ swap prime-pow ] curry map ] curry map
    swap [ [ max ] 2map ] reduce
    [ ^ ] 2map product
    present print ;

MAIN: euler5
