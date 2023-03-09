! Starting in the top left corner of a 2×2 grid,
! and only being able to move to the right and down,
! there are exactly 6 routes to the bottom right corner.
! How many such routes are there through a 20×20 grid?

USE: kernel
USE: math.combinatorics
USE: prettyprint
IN: euler15

: euler15 ( -- )
    20 dup 2 * swap nCk . ;

MAIN: euler15
