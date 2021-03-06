! A permutation is an ordered arrangement of objects. For example,
! 3124 is one possible permutation of the digits 1, 2, 3 and 4.
! If all of the permutations are listed numerically or alphabetically,
! we call it lexicographic order. The lexicographic permutations of
! 0, 1 and 2 are:

! 012   021   102   120   201   210

! What is the millionth permutation of {0,1,2,3,4,5,6,7,8,9}?

USE: io
USE: kernel
USE: math.combinatorics
USE: math.parser
USE: math.ranges
USE: sequences
IN: euler24

: euler24 ( -- )
    10 [0,b)
    all-permutations
    999999 swap nth
    [ number>string ] map concat
    print ;

MAIN: euler24
