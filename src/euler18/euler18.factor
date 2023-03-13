! Find the maximum total value of a downward path from top to bottom
! of the 15-row triangle in "p18_grid.txt".

USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: math
USE: math.bits
USE: math.parser
USE: math.ranges
USE: math.statistics
USE: memoize
USE: prettyprint
USE: sequences
USE: sequences.extras
USE: splitting.extras
IN: euler18

MEMO: grid ( -- g )
    "./work/euler18/p18_grid.txt" utf8 file-lines
    [ { 32 } split-harvest [ string>number ] map ] map ;

MEMO: path-length ( -- l )
    grid length 1 - ;

: make-path ( n -- path )
    make-bits [ 1 0 ? ] map
    path-length 0 pad-tail
    cum-sum ;

: path-value ( path -- x )
    grid [ nth ] 2map-sum ;

: euler18 ( -- )
    path-length 2^ [0,b)
    [ make-path path-value ] map supremum . ;

MAIN: euler18
