! The number, 197, is called a circular prime because all rotations
! of the digits: 197, 971, and 719, are themselves prime.
! How many circular primes are there below one million?

USE: kernel
USE: math.parser
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sequences.extras
IN: euler35

: circular-prime? ( n -- ? )
    number>string all-rotations [ string>number prime? ] all? ;

: euler35 ( -- )
    1000000 [1,b) [ circular-prime? ] count . ;

MAIN: euler35
