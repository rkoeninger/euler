! Find the value of d < 1000 for which 1/d contains the longest recurring
! cycle in its decimal fraction part.

USE: kernel
USE: locals
USE: math
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler26

:: cycle-length ( denom -- n )
    1000 [1,b]
    [ 10^ denom mod 1 = ] find
    nip ;

: euler26 ( -- )
    1000 [1,b)
    [ cycle-length dup 0 ? ] supremum-by . ;

MAIN: euler26
