! A number chain is created by continuously adding the square
! of the digits in a number to form a new number until it has
! been seen before.

! 44 → 32 → 13 → 10 → 1 → 1
! 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

! Therefore any chain that arrives at 1 or 89 will become stuck
! in an endless loop. What is most amazing is that EVERY starting
! number will eventually arrive at 1 or 89.

! How many starting numbers below ten million will arrive at 89?

USE: hash-sets
USE: kernel
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sets
IN: euler92

: next ( x -- y )
    number>string string>digits
    [ sq ] map-sum ;

: chain ( x -- y )
    [ dup [ 1 = ] [ 89 = ] bi or not ]
    [ next ]
    while ;

: euler92 ( -- )
    10000000 [1,b)
    [ chain 89 = ] count . ;

MAIN: euler92
