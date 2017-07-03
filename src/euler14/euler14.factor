! Which starting number, under one million,
! produces the longest Collatz sequence?

USE: io
USE: kernel
USE: math
USE: math.ranges
USE: present
USE: sequences
IN: euler14

: collatz-step ( n -- m )
    dup even?
    [ 2 / ]
    [ 3 * 1 + ]
    if ;

: collatz-loop ( n x -- y )
    [ dup 1 > ]
    [
        collatz-step
        swap 1 + swap
    ]
    while
    drop ;

: collatz-length ( n -- y )
    1 swap collatz-loop ;

: euler14 ( -- )
    1 1000000 [a,b) reverse
    [ collatz-length ] supremum-by
    present print ;

MAIN: euler14
