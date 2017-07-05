! Find the sum of the digits in the number 100!

USE: io
USE: kernel
USE: math.ranges
USE: present
USE: sequences
IN: euler20

: number>digits ( n -- seq )
    [ dup 0 = not ] [ 10 /mod ] produce reverse! nip ;

: euler20 ( -- )
    1 100 [a,b] product
    number>digits sum
    present print ;

MAIN: euler20
