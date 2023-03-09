! There exists exactly one Pythagorean triplet for
! which a + b + c = 1000. Find the product a * b * c.

USE: arrays
USE: kernel
USE: math
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler9

! Pythagorean triples can be generated with
! two numbers m and n where m > n:
! c = m^2 + n^2
! b = m^2 - n^2
! a = 2nm

: mn>triple ( m n -- c b a )
    [ [ sq ] bi@ + ]
    [ [ sq ] bi@ - abs ]
    [ 2 * * ]
    2tri ;

: euler9 ( -- )
    25 [1,b] dup cartesian-product concat
    [ first2 mn>triple 3array ] map
    [ sum 1000 = ] find nip
    product . ;

MAIN: euler9
