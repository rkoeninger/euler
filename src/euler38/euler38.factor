! Take the number 192 and multiply it by each of 1, 2, and 3:

! 192 × 1 = 192
! 192 × 2 = 384
! 192 × 3 = 576
! By concatenating each product we get the 1 to 9 pandigital,
! 192384576. We will call 192384576 the concatenated product
! of 192 and (1,2,3)

! The same can be achieved by starting with 9 and multiplying
! by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which
! is the concatenated product of 9 and (1,2,3,4,5).

! What is the largest 1 to 9 pandigital 9-digit number that can
! be formed as the concatenated product of an integer with
! (1,2, ... , n) where n > 1?

USE: kernel
USE: locals
USE: math
USE: math.order
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sorting
USE: strings
IN: euler38

: pandigital? ( s -- ? )
    [ <=> ] sort >string "123456789" = ;

:: concat-product ( n x -- s )
    n [1,b]
    [ x * number>string ] map
    concat ;

: euler38 ( -- )
    100000 [1,b]
    [| x |
        5 [1,b]
        [ x concat-product ] map
        [ pandigital? ] filter
        [ string>number ] map
        0 suffix supremum
    ]
    map supremum . ;

MAIN: euler38
