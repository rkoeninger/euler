! If all the numbers from 1 to 1000 (one thousand) inclusive were
! written out in words, how many letters would be used?

USE: kernel
USE: generalizations
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler17

MEMO: words1 ( n -- l )
    { ""        "one"     "two"       "three"    "four"
      "five"    "six"     "seven"     "eight"    "nine"
      "ten"     "eleven"  "twelve"    "thirteen" "fourteen"
      "fifteen" "sixteen" "seventeen" "eigtheen" "nineteen" }
    nth length ;

MEMO: words10 ( n -- l )
    { ""      ""      "twenty"  "thirty" "forty"
      "fifty" "sixty" "seventy" "eighty" "ninety" }
    nth length ;

: words<100 ( n -- l )
    dup 20 <
    [ words1 ]
    [ 10 /mod [ words10 ] [ words1 ] bi* + ]
    if ;

: words<1000 ( n -- l )
    100 /mod
    [ [ 0 > ] [ 0 = not ] bi* and "and" length 0 ? ]
    [ drop 0 > "hundred" length 0 ? ]
    [ [ words1 ] [ words<100 ] bi* + ]
    2tri 3 nsum ;

: word1000 ( -- l )
    "onethousand" length ;

: euler17 ( -- )
    1000 [1,b) [ words<1000 ] map-sum word1000 + . ;

MAIN: euler17
