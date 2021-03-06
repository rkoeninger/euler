! The number, 197, is called a circular prime because all rotations
! of the digits: 197, 971, and 719, are themselves prime.

! There are thirteen such primes below 100:
! 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

! How many circular primes are there below one million?

USE: kernel
USE: math.parser
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler35

: rotate ( seq n -- seq' )
    cut swap append ;

: rotations ( seq -- seqs )
    dup length [0,b) swap
    [ swap rotate ] curry map ;

: circular-prime? ( n -- ? )
    number>string rotations
    [ string>number prime? ] all? ;

: euler35 ( -- )
    1000000 [1,b)
    [ circular-prime? ] count . ;

MAIN: euler35
