! Find the 13 consecutive digits with the largest
! product in the 1000 digit number below

USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler8

: euler8 ( -- )
    0 987 [a,b]
    "./work/euler8/bignumber.txt" utf8 file-contents
    [
        swap tail 13 head
        string>digits product
    ]
    curry map supremum . ;

MAIN: euler8
