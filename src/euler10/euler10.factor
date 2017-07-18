! Find the sum of all the primes below two million.

USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler10

: euler10 ( -- )
    2 2000000 [a,b) [ prime? ] filter sum . ;

MAIN: euler10
