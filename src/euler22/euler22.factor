! Using "names.txt", which contains over 5000 names,
! begin by sorting it into alphabetical order. Then working
! out the alphabetical value for each name (A=1, B=2, etc.),
! multiply this value by its position (1st name is at position 1)
! in the sorted list to obtain a name score.

! What is the total of all the name scores in the file?

USE: csv
USE: io.encodings.utf8
USE: kernel
USE: math
USE: math.order
USE: prettyprint
USE: sequences
USE: sorting
IN: euler22

: euler22 ( -- )
    "./work/euler22/names.txt" utf8 file>csv concat
    [ <=> ] sort
    [ 1 + swap [ 64 - ] map-sum * ] map-index
    sum . ;

MAIN: euler22
