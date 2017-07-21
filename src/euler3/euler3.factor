! The prime factors of 13195 are 5, 7, 13 and 29.
! What is the largest prime factor of the number 600851475143?

USE: kernel
USE: math
USE: math.functions
USE: math.primes
USE: prettyprint
USE: sequences
IN: euler3

: euler3 ( -- )
    600851475143 2
    [ over 1 = not ]
    [
        [ 2dup divisor? not ]
        [ next-prime ]
        while
        dup [ / ] dip
    ]
    while nip . ;

MAIN: euler3
