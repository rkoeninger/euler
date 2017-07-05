! Find the sum of the digits in the number 100!

USE: io
USE: kernel
USE: math
USE: math.ranges
USE: present
USE: sequences
IN: euler20

: digits ( n -- seq )
    present [ 48 - ] map ;

: euler20 ( -- )
    1 100 [a,b] product
    digits sum
    present print ;

MAIN: euler20
