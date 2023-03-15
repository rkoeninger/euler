! The number, 1406357289, is a 0 to 9 pandigital number because it
! is made up of each of the digits 0 to 9 in some order, but it also
! has a rather interesting sub-string divisibility property.

! (skip the 1st digit)
! d2 ++ d3 ++ d4  = 406 is divisible by 2
! d3 ++ d4 ++ d5  = 063 is divisible by 3
! d4 ++ d5 ++ d6  = 635 is divisible by 5
! d5 ++ d6 ++ d7  = 357 is divisible by 7
! d6 ++ d7 ++ d8  = 572 is divisible by 11
! d7 ++ d8 ++ d9  = 728 is divisible by 13
! d8 ++ d9 ++ d10 = 289 is divisible by 17

! Find the sum of all 0 to 9 pandigital numbers with this property.

USE: grouping
USE: kernel
USE: math
USE: math.combinatorics
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sequences.extras
IN: euler43

CONSTANT: 7primes { 2 3 5 7 11 13 17 }

: digits>number ( ds -- n )
    dup length [0,b) reverse [ 10^ * ] 2map-sum ;

: substring-divisible? ( ds -- ? )
    rest 3 clump 7primes [ [ digits>number ] dip divisor? ] 2all? ;

: euler43 ( -- )
    9 [0,b] all-permutations
    [ substring-divisible? ] filter
    [ digits>number ] map-sum . ;

MAIN: euler43
