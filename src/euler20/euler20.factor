! Find the sum of the digits in the number 100!

USE: math.factorials
USE: math.parser
USE: prettyprint
USE: sequences
IN: euler20

: euler20 ( -- )
    100 factorial
    number>string string>digits
    sum . ;

MAIN: euler20
