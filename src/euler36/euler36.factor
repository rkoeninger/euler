! The decimal number, 585 = 10010010012 (binary),
! is palindromic in both bases.

! Find the sum of all numbers, less than one million,
! which are palindromic in base 10 and base 2.

USE: kernel
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler36

: palindrome? ( seq -- ? )
    dup reverse = ;

: double-palindrome? ( n -- ? )
    [ number>string ]
    [ >bin ]
    bi
    [ palindrome? ]
    both? ;

: euler36 ( -- )
    1000000 [1,b)
    [ double-palindrome? ] filter
    sum . ;

MAIN: euler36
