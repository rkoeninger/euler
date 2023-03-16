! The nth term of the sequence of triangle numbers is given by
! T(n) = n(n+1)/2. By converting each letter in a word to a number
! corresponding to its alphabetical position and adding these
! values we form a word value. For example, the word value for
! SKY is 19 + 11 + 25 = 55 = T(10). If the word value is a triangle
! number then we shall call the word a triangle word.

USE: csv
USE: io.encodings.utf8
USE: kernel
USE: math
USE: math.functions
USE: prettyprint
USE: sequences
IN: euler42

: triangle? ( x -- ? )
    8 * 1 + sqrt 2 mod 1.0 = ;

: euler42 ( -- )
    "./work/euler42/words.txt" utf8 file>csv concat
    [ [ CHAR: A - 1 + ] map-sum triangle? ] count . ;

MAIN: euler42
