! It can be seen that the number, 125874, and its double,
! 251748, contain exactly the same digits, but in a different order.

! Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
! contain the same digits.

USE: kernel
USE: math
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sorting
IN: euler52

: answer? ( x -- ? )
    [ * number>string string>digits [ <=> ] sort ] curry
    { 2 3 4 5 6 } swap
    map
    [ rest ]
    [ first ]
    bi
    [ = ] curry
    all? ;

: euler52 ( -- )
    1000000 [1,b]
    [ answer? ]
    find nip . ;

MAIN: euler52
