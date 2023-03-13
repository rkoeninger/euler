! A number n is called abundant if the sum of its proper divisors exceeds n.
! It can be shown that all integers greater than 28123 can be written as
! the sum of two abundant numbers.
! Find the sum of all the positive integers which cannot be written as
! the sum of two abundant numbers.

USE: kernel
USE: locals
USE: math
USE: math.primes.factors
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler23

: abundant? ( x -- ? )
    dup divisors but-last sum < ;

MEMO: abundants ( -- xs )
    28123 [1,b] [ abundant? ] filter ;

:: sum-of-abundant? ( x -- ? )
    abundants [ x swap - abundants sorted-member? ] any? ;

: euler23 ( -- )
    28123 [1,b] [ sum-of-abundant? not ] filter sum . ;

MAIN: euler23
