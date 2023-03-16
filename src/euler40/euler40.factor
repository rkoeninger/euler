! An irrational decimal fraction is created by concatenating
! the positive integers: 0.123456789101112131415161718192021...
! If d(n) represents the nth digit of the fractional part,
! where d(12) = 1, find the value of the following expression:
! d(1) × d(10) × d(100) × d(1000) × d(10000) × d(100000) × d(1000000)

USE: kernel
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sequences.extras
IN: euler40

: euler40 ( -- )
    1000000 [1,b] [ number>string ] map-concat
    { 0 9 99 999 9999 99999 999999 } swap nths
    string>digits product . ;

MAIN: euler40
