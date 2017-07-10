! If all the numbers from 1 to 1000 (one thousand) inclusive were
! written out in words, how many letters would be used?

USE: kernel
USE: math
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler17

: one ( x -- n )
    10 mod
    { "" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" }
    nth length ;

: teen ( x -- n )
    10 /i
    { "ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" "seventeen" "eigtheen" "nineteen" }
    nth length ;

: under-twenty ( x -- n )
    dup 10 <
    [ dup one ]
    [ dup teen ]
    if ;

: over-twenty ( x -- n )
    10 /mod one
    swap
    { "" "" "twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety" }
    nth length
    + ;

: tens ( x -- n )
    dup 100 mod 10 /i 2 <
    [ under-twenty ]
    [ over-twenty ]
    if ;

: hundred ( x -- n )
    1000 mod 100 /i
    one
    dup 0 >
    [ "hundred" length + ]
    when ;

: thousand ( x -- n )
    1000 >=
    [ "one" length "thousand" length + ]
    [ 0 ]
    if ;

: letters ( x -- n )
    dup
    [ thousand ]
    [ hundred ]
    [ tens ]
    tri + +
    swap
    100 >=
    [ "and" length + ]
    when ;

: euler17 ( -- )
    1000 [1,b]
    [ letters ] map sum . ;

MAIN: euler17
