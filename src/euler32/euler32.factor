! 

USE: kernel
USE: math
USE: math.combinatorics
USE: math.functions
USE: math.ranges
USE: prettyprint
USE: sequences
USE: sets
IN: euler32

: digits>number ( seq -- n )
    dup length [0,b)
    [ 10^ * ] 2map
    sum ;

: pandigital-product? ( seq -- ?n )
    [ { 5 6 7 8 } swap nths digits>number ]
    [ { 2 3 4 }   swap nths digits>number ]
    [ { 0 1 }     swap nths digits>number ]
    tri *
    dupd = not
    [ drop f ]
    when ;

: euler32 ( -- )
    9 [1,b] all-permutations
    [ pandigital-product? ] map
    sift members sum . ;

MAIN: euler32
