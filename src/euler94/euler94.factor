! It is easily proved that no equilateral triangle exists with
! integral length sides and integral area. However, the almost
! equilateral triangle 5-5-6 has an area of 12 square units.

! We shall define an almost equilateral triangle to be a triangle
! for which two sides are equal and the third differs by no more
! than one unit.

! Find the sum of the perimeters of all almost equilateral triangles
! with integral side lengths and area and whose perimeters do not
! exceed one billion (1,000,000,000).

USE: arrays
USE: kernel
USE: lists
USE: lists.lazy
USE: locals
USE: math
USE: prettyprint
USE: sequences
IN: euler94

: mn>triple ( m n -- c b a )
    [ [ sq ] bi@ + ]
    [ [ sq ] bi@ - abs ]
    [ 2 * * ]
    2tri ;

:: lfrom-to ( x y -- list )
    x lfrom [ y < ] lwhile ;

: euler94 ( -- )
    2 25000 lfrom-to
    [| m | 1 m lfrom-to [| n | m n 2array ] lmap-lazy ] lmap-lazy lconcat
    [ first2 mn>triple 3array ] lmap-lazy
    [ first3 min 2 * 1 - = ] lfilter
    [ first3 min [ 2 * ] bi@ + ] lmap-lazy
    [ 1000000000 <= ] lfilter
    0 [ + ] foldl . ;

MAIN: euler94
