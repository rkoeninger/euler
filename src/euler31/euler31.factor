! 

USE: kernel
USE: locals
USE: math
USE: prettyprint
USE: sequences
IN: euler31

: denoms ( -- seq )
    { 200 100 50 20 10 5 2 1 } ;

:: combos ( amount -- n )
    amount 0 <=
    [
        amount 0 < 0 1 ?
    ]
    [
        denoms [ amount swap - combos ] map sum
    ]
    if ;
recursive

: euler31 ( -- )
    200 combos . ;

MAIN: euler31
