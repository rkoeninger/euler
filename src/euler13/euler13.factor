! Work out the first ten digits of the sum of the
! following one-hundred 50-digit numbers.

USE: io.encodings.utf8
USE: io.files
USE: math.parser
USE: prettyprint
USE: sequences
IN: euler13

: euler13 ( -- )
    "./work/euler13/bignumbers.txt" utf8 file-lines
    [ string>number ] map-sum
    number>string 10 head . ;

MAIN: euler13
