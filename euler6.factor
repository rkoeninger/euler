USE: math
USE: math.ranges
USE: sequences
USE: present
USE: io
IN: euler6

: euler6 ( -- )
    1000
    [1,b]
    [ sum dup * ]
    [ [ dup * ] map sum ]
    bi -
    present print ;

MAIN: euler6
