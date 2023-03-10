! Find the greatest product of four colinear numbers
! (up, down, left, right, or diagonally) in the grid in "p11_grid.txt"?

USE: io.encodings.utf8
USE: io.files
USE: arrays
USE: kernel
USE: locals
USE: math
USE: math.ranges
USE: math.parser
USE: memoize
USE: prettyprint
USE: sequences
USE: sequences.extras
USE: splitting.extras
IN: euler11

MEMO: grid ( -- g )
    "./work/euler11/p11_grid.txt" utf8 file-lines
    [ { 32 } split-harvest [ string>number ] map ] map ;

: transpose ( g -- g' )
    dup first length [0,b)
    swap [ nth ] cartesian-map ;

: zeroes ( g -- zs )
    length 1 - 0 <array> ;

:: diagonal-padding ( g -- g' )
    g [ g zeroes append ] map [ neg rotate ] map-index ;

: 4subseqs ( seq -- seqs )
    all-subseqs [ length 4 = ] filter ;

: euler11 ( -- )
    grid
    grid transpose
    grid diagonal-padding transpose
    grid [ reverse ] map diagonal-padding transpose
    4array concat
    [ 4subseqs ] map-concat
    [ product ] map supremum . ;

MAIN: euler11
