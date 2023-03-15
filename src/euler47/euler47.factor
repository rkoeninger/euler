! The first 2 consecutive numbers to have 2 distinct prime factors
! are 14 = 2 × 7, 15 = 3 × 5
! The first 3 consecutive numbers to have 3 distinct prime factors
! are 644 = 2² × 7 × 23, 645 = 3 × 5 × 43, 646 = 2 × 17 × 19
! Find the first 4 consecutive integers to have 4 distinct
! prime factors each. What is the first of these numbers?

USE: kernel
USE: lists
USE: lists.lazy
USE: math
USE: math.primes.factors
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler47

: euler47 ( -- )
    1 lfrom [ dup 3 + [a,b] [ unique-factors length 4 = ] all? ] lfilter car . ;

MAIN: euler47
