! Find the 13 consecutive digits with the largest
! product in the 1000 digit number in "bignumber.txt".

USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: math.parser
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler8

MEMO: digits ( -- ds )
    "./work/euler8/bignumber.txt" utf8 file-contents string>digits ;

: euler8 ( -- )
    digits length 13 - [0,b]
    [ dup 13 + digits subseq product ] map supremum . ;

MAIN: euler8
