! The nth term of the sequence of triangle numbers is given by,
! tn = ½n(n+1); so the first ten triangle numbers are:
! 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

! By converting each letter in a word to a number corresponding to
! its alphabetical position and adding these values we form a word value.
! For example, the word value for SKY is 19 + 11 + 25 = 55 = t10.
! If the word value is a triangle number then we shall call the word
! a triangle word.

USE: csv
USE: io.encodings.utf8
USE: kernel
USE: math
USE: math.functions
USE: math.quadratic
USE: prettyprint
USE: sequences
IN: euler42

: triangle? ( n -- ? )
    -1 * 0.5 0.5 quadratic
    [ dup round = ] both? ;

: euler42 ( -- )
    "./work/euler42/words.txt" utf8 file>csv concat
    [ [ 64 - ] map sum triangle? ] count ;

MAIN: euler42
