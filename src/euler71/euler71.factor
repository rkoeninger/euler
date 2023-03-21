! For the reduced proper fraction with denominator under 1,000,000,
! that is closest to 3/7 while still being less than 3/7,
! find the numerator of that fraction.

USE: arrays
USE: kernel
USE: math
USE: math.ranges
USE: sequences
IN: euler71

: euler71 ( -- )
    2 1000000 [a,b]
    [ dup 3 * 7 /i swap 2array ] map
    [ first2 /f 3 7 /f < ] filter
    [ first2 /f 3 7 /f swap - ] infimum-by first . ;

MAIN: euler71
