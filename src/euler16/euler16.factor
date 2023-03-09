! What is the sum of the digits of the number 2^1000?

USE: kernel
USE: math.functions
USE: math.parser
USE: prettyprint
USE: sequences
IN: euler16

: euler16 ( -- )
    2 1000 ^
    number>string string>digits
    sum . ;

MAIN: euler16
