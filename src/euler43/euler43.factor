! The number, 1406357289, is a 0 to 9 pandigital number because it
! is made up of each of the digits 0 to 9 in some order, but it also
! has a rather interesting sub-string divisibility property.

! Let d1 be the 1st digit, d2 be the 2nd digit, and so on.
! In this way, we note the following:

! d2 * d3 * d4=406 is divisible by 2
! d3 * d4 * d5=063 is divisible by 3
! d4 * d5 * d6=635 is divisible by 5
! d5 * d6 * d7=357 is divisible by 7
! d6 * d7 * d8=572 is divisible by 11
! d7 * d8 * d9=728 is divisible by 13
! d8 * d9 * d10=289 is divisible by 17

! Find the sum of all 0 to 9 pandigital numbers with this property.

USE: kernel
USE: math.combinatorics
USE: math.functions
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler43

: digits>number ( ds -- n )
    [ number>string ] map concat string>number ;

: substring-divisible? ( ds -- ? )
    [ nths digits>number swap divisor? ] curry
    { 2         3         5         7         11        13        17 }
    { { 1 2 3 } { 2 3 4 } { 3 4 5 } { 4 5 6 } { 5 6 7 } { 6 7 8 } { 7 8 9 } }
    rot 2all? ;

: euler43 ( -- )
    9 [0,b] all-permutations
    [ substring-divisible? ] filter
    [ digits>number ] map-sum . ;

MAIN: euler43
