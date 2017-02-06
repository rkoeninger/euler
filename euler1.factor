USE: math
USE: math.functions
USE: math.ranges
USE: present
USE: io
IN: euler1

: euler1 ( -- )
    1000 [0,b)
    [ [ 3 divisor? ] [ 5 divisor? ] bi or ] filter
    sum
    present print ;

MAIN: euler1
