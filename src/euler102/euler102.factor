! Three distinct points are plotted at random on a Cartesian plane,
! for which -1000 ≤ x, y ≤ 1000, such that a triangle is formed.

! Consider the following two triangles:
! A(-340,495), B(-153,-910), C(835,-947)
! X(-175,41), Y(-421,-714), Z(574,-645)

! It can be verified that triangle ABC contains the origin, whereas triangle XYZ does not.

! Using triangles.txt, which contains the co-ordinates of one thousand "random" triangles,
! find the number of triangles for which the interior contains the origin.

USE: csv
USE: io.encodings.utf8
USE: kernel
USE: locals
USE: math.functions
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler102

:: sign ( x1 y1 x2 y2 -- n )
    x1 x2 - y2 * y1 y2 - x2 * - ;

:: contains-origin? ( x1 y1 x2 y2 x3 y3 -- ? )
    [let
        x1 y1 x2 y2 sign :> s1
        x2 y2 x3 y3 sign :> s2
        x3 y3 x1 y1 sign :> s3
        s1 0 < s2 0 < s3 0 < or or
        s1 0 > s2 0 > s3 0 > or or
        and not
    ] ;

:: apply6 ( ... seq quot: ( ... a b c d e f -- ... x ) -- ... x )
    0 seq nth 1 seq nth 2 seq nth 3 seq nth 4 seq nth 5 seq nth
    quot call ; inline

: euler102 ( -- )
    "./work/euler102/p102_triangles.txt" utf8 file>csv
    [
        [ string>number ] map
        [ contains-origin? ] apply6
    ] count . ;

MAIN: euler102
