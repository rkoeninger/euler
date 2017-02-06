USE: math
USE: math.functions
USE: math.ranges
USE: present
USE: io
IN: euler2

: fib-h ( x y n -- y x+y n-1 )
    dup zero?
    [ ]
    [ 1 - -rot swap over + rot fib-h ]
    if ;
    recursive

: fibonacci ( n -- x )
    0 1 rot
    fib-h
    drop nip ;

: euler2 ( -- )
    40 [0,b] ! 40 is an arbitrary stopping point known to be far enough
    [ fibonacci ] map
    [ [ 4000000 <= ] [ even? ] bi and ] filter
    sum
    present print ;

MAIN: euler2
