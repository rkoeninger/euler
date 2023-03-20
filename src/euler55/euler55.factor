! If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.
! This process can be repeated to arrive at a palindrome.
! A Lychrel number undergoes at least 50 iterations without becoming a palindrome.
! 196 and 4994 are example Lychrel numbers.
! How many Lychrel numbers are there below ten-thousand?

USE: kernel
USE: math
USE: math.order
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler55

: reverse-number ( n -- n' )
    number>string reverse string>number ;

: palindrome? ( n -- ? )
    number>string dup reverse = ;

: lychrel? ( n -- ? )
    dup reverse-number +
    0
    [ 2dup [ palindrome? not ] [ 50 < ] bi* and ]
    [ [ dup reverse-number + ] [ 1 + ] bi* ]
    while
    nip 50 >= ;

: euler55 ( -- )
    10000 [1,b) [ lychrel? ] count . ;

MAIN: euler55
