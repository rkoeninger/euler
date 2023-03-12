! How many Sundays fell on the first of the month during the twentieth century?

USE: calendar
USE: lists
USE: lists.lazy
USE: math.order
USE: prettyprint
IN: euler19

: euler19 ( -- )
    1901 <year>
    [ 1 months time+ ] lfrom-by
    [ 2001 <year> before? ] lwhile
    [ sunday? ] lfilter llength . ;

MAIN: euler19
