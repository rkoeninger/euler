! By counting carefully it can be seen that a rectangular
! grid measuring 3 by 2 contains eighteen rectangles.

! Although there exists no rectangular grid that contains
! exactly two million rectangles, find the area of the
! grid with the nearest solution.

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler85

: rectangle-count ( x y -- count )
    [ [1,b] ] bi@
    [ * ] cartesian-map concat
    sum ;

:: <pair> ( x y -- p )
    { x y } ;

: >pair< ( p -- x y )
    [ first ] [ second ] bi ;

: euler85 ( -- )
    100 [1,b] dup
    [ <pair> ] cartesian-map concat
    [ >pair< rectangle-count 2000000 - abs ] infimum-by
    >pair< * . ;

MAIN: euler85
