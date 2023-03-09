! Which starting number, under one million,
! produces the longest Collatz sequence?

USE: kernel
USE: math
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler14

: collatz-step ( x -- y )
    dup even?
    [ 2 / ]
    [ 3 * 1 + ]
    if ;

: collatz-loop ( n x -- n' y )
    [ dup 1 > ]
    [ collatz-step [ 1 + ] dip ] while ;

: euler14 ( -- )
    1 1000000 [a,b) reverse
    [| x | 1 x collatz-loop drop ] supremum-by . ;

MAIN: euler14
