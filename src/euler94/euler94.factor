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
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler94

: <pair> ( a b -- p )
    { } swap prefix swap prefix ;

: <triplet> ( a b c -- p )
    { } swap prefix swap prefix swap prefix ;

: >triplet< ( p -- a b c )
    [ first ] [ second ] [ third ] tri ;

: area ( a b c -- x )
    3dup + + 2 /
    dup [ [ swap - ] curry tri@ * * ] dip *
    sqrt ;

: euler94 ( -- )
    2 1000000000 [a,b]
    [
        [ dup dup 1 + <triplet> ]
        [ dup dup 1 - <triplet> ]
        bi <pair>
    ] map concat
    [ >triplet< area dup round = ] filter
    [ >triplet< + + ] map-sum . ;

MAIN: euler94
