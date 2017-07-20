! Which starting number, under one million,
! produces the longest Collatz sequence?

USE: kernel
USE: math
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler14

: collatz-step ( n -- m )
    dup even?
    [ 2 / ]
    [ 3 * 1 + ]
    if ;
inline

MEMO: collatz-length ( n -- y )
    dup 1 =
    [ ]
    [ collatz-step collatz-length 1 + ]
    if ;
recursive

: euler14 ( -- )
    1 1000000 [a,b) reverse
    [ collatz-length ] supremum-by . ;

MAIN: euler14
