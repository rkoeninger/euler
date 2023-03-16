! The prime 41, can be written as the sum of six consecutive primes:
!     41 = 2 + 3 + 5 + 7 + 11 + 13
! This is the longest sum of consecutive
! primes that adds to a prime below one-hundred.
! The longest sum of consecutive primes below
! one-thousand that adds to a prime, contains
! 21 terms, and is equal to 953.
! Which prime, below one-million, can be written
! as the sum of the most consecutive primes?

USE: arrays
USE: kernel
USE: math
USE: math.primes
USE: prettyprint
USE: sequences
USE: sequences.extras
IN: euler50

: euler50 ( -- )
    4000 primes-upto
    all-subseqs
    [ [ sum ] [ length ] bi 2array ] map
    [ first [ 1000000 < ] [ prime? ] bi and ] filter
    [ second ] supremum-by first . ;

MAIN: euler50
