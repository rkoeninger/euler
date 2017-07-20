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

: 1-4-pandigital-product? ( seq -- ?n )
    [ 4 tail*       digits>number ]
    [ 1 tail 4 head digits>number ]
    [ 1 head        digits>number ]
    tri *
    dupd = not
    [ drop f ]
    when ;

: 2-3-pandigital-product? ( seq -- ?n )
    [ 4 tail*       digits>number ]
    [ 2 tail 3 head digits>number ]
    [ 2 head        digits>number ]
    tri *
    dupd = not
    [ drop f ]
    when ;

: euler32 ( -- )
    9 [1,b] all-permutations
    [
        [ 1-4-pandigital-product? ]
        [ 2-3-pandigital-product? ]
        bi or
    ] map
    sift members sum . ;

MAIN: euler32
