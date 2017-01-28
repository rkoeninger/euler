USE: math
USE: math.ranges
USE: present
USE: io
IN: euler1

: euler1 ( -- )
    1000 [0,b)
    [ dup 3 mod 0 = swap 5 mod 0 = or ] filter
    sum
    present print ;

MAIN: euler1
