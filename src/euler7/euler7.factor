! If 2 is the 1st prime number, what is the 10001st?

USE: math
USE: math.primes
USE: prettyprint
IN: euler7

: euler7 ( -- )
    2 10000 [ next-prime ] times . ;

MAIN: euler7
