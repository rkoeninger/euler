! How many Sundays fell on the first of the month during the twentieth century?

USE: calendar
USE: kernel
USE: math
USE: math.order
USE: prettyprint
IN: euler19

: euler19 ( -- )
    0
    1901 1 1 <date>
    [ dup 2001 1 1 <date> before? ]
    [
        dup sunday?
        [ [ 1 + ] dip ]
        when
        1 months time+
    ]
    while drop . ;

MAIN: euler19
