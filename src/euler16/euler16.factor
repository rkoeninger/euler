! What is the sum of the digits of the number 2^1000?

USE: io
USE: kernel
USE: math
USE: math.functions
USE: present
USE: sequences
IN: euler16

: number>digits ( n -- seq )
    [ dup 0 = not ] [ 10 /mod ] produce reverse! nip ;

: euler16 ( -- )
    2 1000 ^ number>digits sum
    present print ;

MAIN: euler16
