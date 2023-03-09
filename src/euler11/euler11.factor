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
USE: splitting
IN: euler11

MEMO: load-grid ( -- g )
    "./work/euler11/p11_grid.txt" utf8 file-lines
    [ { 32 } split [ string>number ] map ] map ;

:: transpose ( g -- g' )
    g first length [0,b)
    [| n | g [| row | n row nth ] map ] map ;

: zeroes ( g -- zs )
    length 1 - 0 <array> ;

:: diagonal-padding ( g -- g' )
    g [ g zeroes append ] map [ neg rotate ] map-index ;

:: 4subseqs ( seq -- seqs )
    seq length 3 - [0,b) [ dup 4 + seq subseq ] map ;

: euler11 ( -- )
    load-grid
    {
        [ ]
        [ transpose ]
        [ diagonal-padding transpose ]
        [ [ reverse ] map diagonal-padding transpose ]
    }
    cleave 4array concat
    [ 4subseqs ] map-concat
    [ product ] map supremum . ;

MAIN: euler11
