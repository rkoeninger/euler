! By counting carefully it can be seen that a rectangular
! grid measuring 3 by 2 contains eighteen rectangles.

! Although there exists no rectangular grid that contains
! exactly two million rectangles, find the area of the
! grid with the nearest solution.

USE: kernel
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler85

: euler85 ( -- )
    2000000 sqrt >integer
    [1,b] dup cartesian-product concat
    [ [ dup 1 + * 2 / ] map product 2000000 - abs ] infimum-by
    first2 * . ;

MAIN: euler85
