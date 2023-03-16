! It was proposed by Christian Goldbach that every odd
! non-prime number can be written as the sum of a prime
! and twice a square.

! 9 = 7 + 2×1^2     15 = 7 + 2×2^2     21 = 3 + 2×3^2
! 25 = 7 + 2×3^2    27 = 19 + 2×2^2    33 = 31 + 2×1^2

! It turns out that the conjecture was false. What is
! the smallest odd non-prime that cannot be written as
! the sum of a prime and twice a square?

USE: combinators.short-circuit
USE: kernel
USE: lists
USE: lists.lazy
USE: locals
USE: math
USE: math.functions
USE: math.primes
USE: prettyprint
USE: sequences
IN: euler46

: goldbach-candidate? ( p x -- ? )
    swap - 2 / { [ 0 >= ] [ sqrt dup floor = ] } 1&& ;

:: goldbach? ( x -- ? )
    2 [ next-prime ] lfrom-by
    [ x { [ goldbach-candidate? ] [ > ] } 2|| ] lfilter car
    x goldbach-candidate? ;

: euler46 ( -- )
    9 [ 2 + ] lfrom-by [ { [ prime? ] [ goldbach? ] } 1|| not ] lfilter car . ;

MAIN: euler46
