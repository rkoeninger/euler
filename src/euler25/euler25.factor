! Find the first 1000-digit Fibonacci number.

USE: io
USE: kernel
USE: math
USE: math.ranges
USE: present
USE: sequences
IN: euler25

: euler25 ( -- )
    { 1 0 }
    [ dup first log10 999 < ]
    [ dup 2 head sum prefix ]
    while
    length 1 -
    present print ;

MAIN: euler25
