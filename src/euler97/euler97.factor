! Find the last ten digits of the number
! (28433×(2^7830457))+1.

USE: kernel
USE: math
USE: math.functions
USE: prettyprint
IN: euler97

: euler97 ( -- )
    10 10 1 28433 2 7830457 10 10 ^ ^mod * + -rot ^ mod . ;

MAIN: euler97
