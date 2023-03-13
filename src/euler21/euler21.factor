! Let d(n) be defined as the sum of proper divisors of n less than n.
! If d(a) = b and d(b) = a, where a ≠ b, then a and b are
! an amicable pair and each of a and b are called amicable numbers.

! Evaluate the sum of all the amicable numbers under 10000.

USE: kernel
USE: math.primes.factors
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler21

MEMO: divisors-sum ( x -- n )
    divisors but-last sum ;

: amicable? ( x -- ? )
    dup divisors-sum
    [ = not ] [ divisors-sum = ] 2bi and ;

: euler21 ( -- )
    2 10000 [a,b)
    [ amicable? ] filter
    sum . ;

MAIN: euler21
