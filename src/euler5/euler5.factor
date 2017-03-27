! 2520 is the smallest number that can be divided by each of
! the numbers from 1 to 10 without any remainder.
! What is the smallest positive number that is evenly divisible by
! all of the numbers from 1 to 20?

USE: math
USE: math.functions
USE: math.ranges
USE: sequences
USE: present
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
        [ swap over suffix swap ]
        if
        swapd
        1 +
        primes
    ]
    if ;
recursive

: euler5 ( -- )
    { } 20 2 primes
    dup
    [ 20 log swap log / floor >integer ] map
    [ ^ ] 2map
    product
    present print ;

MAIN: euler5
