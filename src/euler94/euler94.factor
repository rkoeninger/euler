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
USE: math.functions
USE: math.order
USE: prettyprint
USE: sequences
IN: euler94

: mn>triple ( m n -- c b a )
    [ [ sq ] bi@ + ]
    [ [ sq ] bi@ - abs ]
    [ 2 * * ]
    2tri ;

:: lupto ( x -- list )
    1 lfrom [ x < ] lwhile ;

: lmap-sum ( list quot -- n )
    lmap-lazy 0 [ + ] foldl ; inline

: euler94 ( -- )
    1000000000 1 + 3 / sqrt >integer lupto
    [| m |
        m lupto
        [| n |
            m n gcd nip 1 =
            [
                [let m n mn>triple :> ( c b a )
                     a b min 2 * :> s
                    s c - abs 1 =
                    [
                        c 2 * s +
                        dup 1000000000 >
                        [ drop 0 ]
                        when
                    ]
                    [ 0 ]
                    if
                ]
            ]
            [ 0 ]
            if
        ] lmap-sum
    ] lmap-sum . ;

MAIN: euler94
