! By starting at the top of the triangle below and
! moving to adjacent numbers on the row below, the
! maximum total from top to bottom is 23.

!    3/
!   7\ 4
!  2  4\ 6
! 8  5  9\ 3

! Find the maximum total from top to bottom of the
! 100-row triangle in "triangle.txt".

USE: io.encodings.utf8
USE: io.files
USE: grouping
USE: kernel
USE: math
USE: math.parser
USE: memoize
USE: prettyprint
USE: sequences
USE: splitting.extras
IN: euler67

MEMO: triangle ( -- g )
    "./work/euler67/triangle.txt" utf8 file-lines
    [ { 32 } split-harvest [ string>number ] map ] map ;

: euler67 ( -- )
    triangle reverse
    [ rest ] [ first ] bi
    [ swap 2 clump [ supremum + ] 2map ] reduce
    first . ;

MAIN: euler67
