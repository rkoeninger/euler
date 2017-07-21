! The number 3797 has an interesting property. Being prime itself,
! it is possible to continuously remove digits from left to right,
! and remain prime at each stage: 3797, 797, 97, and 7.
! Similarly we can work from right to left: 3797, 379, 37, and 3.

! Find the sum of the only eleven primes that are both truncatable
! from left to right and right to left.

USE: kernel
USE: math
USE: math.functions
USE: math.parser
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler37

: to-the-left? ( n -- ? )
    dup 10 <
    [ prime? ]
    [
        10 /i
        dup prime?
        [ to-the-left? ]
        [ drop f ]
        if
    ]
    if ;
recursive

: to-the-right? ( n -- ? )
    dup 10 <
    [ prime? ]
    [
        number>string 1 tail string>number
        dup prime?
        [ to-the-right? ]
        [ drop f ]
        if
    ]
    if ;
recursive

: truncatable-prime? ( n -- ? )
    [ prime? ]
    [ to-the-left? ]
    [ to-the-right? ]
    tri and and ;

: euler37 ( -- )
    10 1000000 [a,b]
    [ truncatable-prime? ] filter sum . ;

MAIN: euler37
