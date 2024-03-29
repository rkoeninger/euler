! A permutation is an ordered arrangement of objects. For example,
! 3124 is one possible permutation of the digits 1, 2, 3 and 4.
! If all of the permutations are listed numerically or alphabetically,
! we call it lexicographic order. The lexicographic permutations of
! 0, 1 and 2 are:

! 012   021   102   120   201   210

! What is the millionth permutation of {0,1,2,3,4,5,6,7,8,9}?

USE: kernel
USE: math
USE: math.combinatorics
USE: math.functions
USE: math.parser
USE: prettyprint
USE: sequences
IN: euler24

: euler24 ( -- )
    "0123456789" string>digits
    999999 [ next-permutation ] times
    reverse [ 10^ * ] map-index sum . ;

MAIN: euler24
