! What is the sum of the digits of the number 2^1000?

USE: io
USE: kernel
USE: math
USE: math.functions
USE: present
USE: sequences
IN: euler16

: euler16 ( -- )
    2 1000 ^ number>digits sum ;

MAIN: euler16
