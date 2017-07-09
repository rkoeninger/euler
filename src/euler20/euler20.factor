! Find the sum of the digits in the number 100!

USE: kernel
USE: math.parser
USE: math.ranges
USE: present
USE: prettyprint
USE: sequences
IN: euler20

: euler20 ( -- )
    1 100 [a,b] product
    present string>digits
    sum . ;

MAIN: euler20
