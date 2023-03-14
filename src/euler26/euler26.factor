! Find the value of d < 1000 for which 1/d contains the
! longest recurring cycle in its decimal fraction part.

USE: hash-sets.numbers
USE: kernel
USE: locals
USE: math
USE: math.primes
USE: prettyprint
USE: sequences
USE: sets
IN: euler26

:: cycle-length ( d -- n )
    2 <number-hash-set> 1
    [ 2dup swap ?adjoin ]
    [ 10 * d mod ]
    while drop cardinality ;

: euler26 ( -- )
    1000 primes-upto [ cycle-length ] supremum-by . ;

MAIN: euler26
