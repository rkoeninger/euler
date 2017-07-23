! We shall say that an n-digit number is pandigital if it
! makes use of all the digits 1 to n exactly once. For example,
! 2143 is a 4-digit pandigital and is also prime.

! What is the largest n-digit pandigital prime that exists?

USE: math.combinatorics
USE: math.parser
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler41

: digits>number ( ds -- n )
    [ number>string ] map concat
    string>number ;

: euler41 ( -- )
    9 [1,b]
    [
        [0,b] all-permutations
        [ digits>number ] map
        [ prime? ] filter
        0 suffix
        supremum
    ]
    map supremum . ;

MAIN: euler41
