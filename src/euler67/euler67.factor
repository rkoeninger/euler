! By starting at the top of the triangle below and moving to adjacent
! numbers on the row below, the maximum total from top to bottom is 23.

!    3/
!   7\ 4
!  2  4\ 6
! 8  5  9\ 3

! Find the maximum total from top to bottom of the 100-row triangle below:

USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: locals
USE: math
USE: math.order
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
USE: splitting
IN: euler67

: triangle ( -- g )
    "./work/euler67/triangle.txt" utf8 file-contents
    { 10 13 } split
    [ { 32 } split [ string>number ] map ] map ;

:: visit ( j i g -- )
    j i 1 + g nth nth
    j 1 + i 1 + g nth nth
    max
    j i g nth nth
    +
    j i g nth set-nth ;

: euler67 ( -- )
    triangle
    dup 99 [0,b) reverse swap
    [
        swap dup [0,b] -rot swap
        [ visit ] 2curry each
    ]
    curry each
    first first . ;

MAIN: euler67
