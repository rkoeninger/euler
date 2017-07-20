! We shall say that an n-digit number is pandigital if it makes use
! of all the digits 1 to n exactly once; for example, the 5-digit
! number, 15234, is 1 through 5 pandigital.

! The product 7254 is unusual, as the identity, 39 × 186 = 7254,
! containing multiplicand, multiplier, and product is 1 through 9 pandigital.

! Find the sum of all products whose multiplicand/multiplier/product
! identity can be written as a 1 through 9 pandigital.

USE: kernel
USE: locals
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

:: pandigital-product? ( seq i j -- ?n )
    seq
    [ 4 tail*       digits>number ]
    [ i tail j head digits>number ]
    [ i head        digits>number ]
    tri *
    dupd = not
    [ drop f ]
    when ;

: euler32 ( -- )
    9 [1,b] all-permutations
    [
        [ 1 4 pandigital-product? ]
        [ 2 3 pandigital-product? ]
        bi or
    ] map
    sift members sum . ;

MAIN: euler32
