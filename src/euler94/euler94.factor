! It is easily proved that no equilateral triangle exists with
! integral length sides and integral area. However, the almost
! equilateral triangle 5-5-6 has an area of 12 square units.

! We shall define an almost equilateral triangle to be a triangle
! for which two sides are equal and the third differs by no more
! than one unit.

! Find the sum of the perimeters of all almost equilateral triangles
! with integral side lengths and area and whose perimeters do not
! exceed one billion (1,000,000,000).

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler94

:: area ( n k -- x )
    n 3 * k +
    n k + sq
    n k -
    * * sqrt 4 / ;

: perimeter ( n k -- x )
    2dup area dup round =
    [ swap 3 * + ]
    [ 2drop 0 ]
    if ;

: euler94 ( -- )
    2 333333333 [a,b]
    [
        [  1 perimeter ]
        [ -1 perimeter ]
        bi +
    ]
    map-sum . ;

MAIN: euler94
