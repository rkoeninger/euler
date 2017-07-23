! An irrational decimal fraction is created by concatenating
! the positive integers: 0.123456789101112131415161718192021...

! It can be seen that the 12th digit of the fractional part is 1.

! If dn represents the nth digit of the fractional part, find
! the value of the following expression.

! d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler40

: euler40 ( -- )
    { 0 9 99 999 9999 99999 999999 }
    1000000 [1,b] [ number>string ] map concat
    nths
    string>digits product . ;

MAIN: euler40
