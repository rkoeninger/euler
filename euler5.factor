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
    if ; recursive

: prime-pow ( x b -- n )
    2dup
    divisor?
    [ swap over / swap prime-pow 1 + ]
    [ 2drop 0 ]
    if ; recursive

: prime-factors ( ps n -- pfs )
    [ swap prime-pow ] curry map ;

: zip-max ( xs ys -- zs )
    [ max ] 2map ;

: euler5 ( -- )
    { } 20 2 primes dup dup
    [ drop 0 ] map swap
    2 20 [a,b] swap
    [ swap prime-factors ] curry map
    swap [ zip-max ] reduce
    [ ^ ] 2map
    1 [ * ] reduce
    present print ;

MAIN: euler5
