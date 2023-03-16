! If p is the perimeter of a right angle triangle with integral
! length sides, {a,b,c}, there are exactly three solutions for p = 120.

! {20,48,52}, {24,45,51}, {30,40,50}

! For which value of p ≤ 1000, is the number of solutions maximised?

USE: kernel
USE: locals
USE: math
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler39

: pythagorean? ( c b a -- ? )
    [ sq ] tri@ + = ;

:: triangle-count ( p -- n )
    p 2 - [1,b]
    [| a | 2 p [a,b] [| b | p a - b - a b pythagorean? ] count ]
    map-sum ;

: euler39 ( -- )
    1000 [1,b] [ triangle-count ] supremum-by . ;

MAIN: euler39
