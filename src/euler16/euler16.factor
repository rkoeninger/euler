! What is the sum of the digits of the number 2^1000?

USE: io
USE: kernel
USE: math.functions
USE: present
USE: sequences
IN: euler16

: digits ( n -- seq )
    present [ 48 - ] map ;

: euler16 ( -- )
    2 1000 ^
    digits sum
    present print ;

MAIN: euler16
