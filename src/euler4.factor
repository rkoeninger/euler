! A palindromic number reads the same both ways. The largest
! palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
! Find the largest palindrome made from the product of two 3-digit numbers.

USE: math
USE: math.functions
USE: math.order
USE: math.ranges
USE: sequences
USE: present
USE: vectors
USE: io
IN: euler4

: tup ( x y -- xy )
    1vector swap
    1vector swap
    append ;

: pairs ( -- xs )
    100 1000 [a,b) reverse
    dup [ swap [ tup ] curry map ] curry map
    concat ;

: palindrome? ( x -- ? )
    present dup reverse = ;

: euler4 ( -- )
    pairs [ product palindrome? ] filter first
    present print ;

MAIN: euler4
