! It was proposed by Christian Goldbach that every odd
! composite number can be written as the sum of a prime
! and twice a square.

! 9 = 7 + 2×1^2
! 15 = 7 + 2×2^2
! 21 = 3 + 2×3^2
! 25 = 7 + 2×3^2
! 27 = 19 + 2×2^2
! 33 = 31 + 2×1^2

! It turns out that the conjecture was false. What is
! the smallest odd composite that cannot be written as
! the sum of a prime and twice a square?

USE: kernel
USE: math
USE: math.functions
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler46

: sq? ( x -- ? )
    sqrt dup complex?
    [ drop f ]
    [ dup round = ]
    if ;

: goldbach-candidate? ( x -- ? )
    - 2 / sq? ;
inline

: goldbach? ( x -- ? )
    2
    [ 2dup [ goldbach-candidate? not ] [ > ] 2bi and ]
    [ next-prime ]
    while
    goldbach-candidate? ;

: euler46 ( -- )
    9 1000001 2 <range>
    [
        [ prime? not ]
        [ goldbach? not ]
        bi and
    ]
    find nip . ;

MAIN: euler46
