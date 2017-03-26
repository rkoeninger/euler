! A palindromic number reads the same both ways. The largest
! palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
! Find the largest palindrome made from the product of two 3-digit numbers.

USE: math
USE: math.order
USE: math.ranges
USE: sequences
USE: present
USE: vectors
USE: io
IN: euler4

: palindrome? ( x -- ? )
    present dup reverse = ;

! Generate progressively longer sequences to avoid
! duplicate pairs, cutting search space in half:

!     100*100
!     100*101 101*101
!     100*102 101*102 102*102
!     100*103 101*103 102*103 103*103

: euler4 ( -- )
    100 1000 [a,b)
    [
        dup 100 swap [a,b]
        swap [ * ] curry map
    ]
    map concat
    [ palindrome? ] filter
    supremum
    present print ;

MAIN: euler4
