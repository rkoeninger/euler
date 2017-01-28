USE: math
USE: math.functions
USE: math.ranges
USE: locals
USE: present
USE: io
IN: euler2

: gold ( -- n ) 1 5 sqrt + 2 / ;

: gold' ( -- n ) 1 5 sqrt - 2 / ;

:: fibonacci ( n -- x ) gold n ^ gold' n ^ - 5 sqrt / ceiling >integer ;

! 40 is an arbitrary stopping point because
! I just happen to know that's far enough

: euler2 ( -- )
    40 [0,b]
    [ fibonacci ] map
    [ 4000000 <= ] filter
    [ even? ] filter
    sum
    present print ;

MAIN: euler2
