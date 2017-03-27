! If 2 is the 1st prime number, what is the 10001st?

USE: kernel
USE: io
USE: math
USE: math.functions
USE: math.order
USE: math.ranges
USE: present
USE: sequences
USE: vectors
IN: euler7

: divisor-any? ( ps x -- ? )
    [ swap divisor? ] curry any? ;

: next-prime ( ps0 from -- ps1 )
    2dup divisor-any?
    [ 1 + next-prime ]
    [ suffix ]
    if ;
recursive

: more-primes ( ps0 n -- ps1 )
    dup zero?
    [ drop ]
    [
        swap dup last next-prime
        swap 1 - more-primes
    ]
    if ;
recursive

: euler7 ( -- )
    { 2 } 10000 more-primes last
    present print ;

MAIN: euler7
