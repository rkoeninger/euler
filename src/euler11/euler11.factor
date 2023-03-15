! Find the greatest product of four colinear numbers
! (up, down, left, right, or diagonally) in the grid in "p11_grid.txt"?

USE: arrays
USE: io.encodings.utf8
USE: io.files
USE: grouping
USE: kernel
USE: locals
USE: math
USE: math.parser
USE: memoize
USE: prettyprint
USE: sequences
USE: sequences.extras
USE: sequences.generalizations
USE: splitting.extras
IN: euler11

MEMO: grid ( -- g )
    "./work/euler11/p11_grid.txt" utf8 file-lines
    [ { 32 } split-harvest [ string>number ] map ] map ;

MEMO: zeroes ( -- zs )
    grid length 1 - 0 <array> ;

: diagonal-padding ( g -- g' )
    [ zeroes append ] map
    [ neg rotate ] map-index ;

: euler11 ( -- )
    grid
    grid flip
    grid diagonal-padding flip
    grid [ reverse ] map diagonal-padding flip
    4 nappend
    [ 4 clump ] map-concat
    [ product ] map supremum . ;

MAIN: euler11
