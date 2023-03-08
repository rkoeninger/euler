! The arithmetic sequence, 1487, 4817, 8147,
! in which each of the terms increases by 3330,
! is unusual in two ways:
!     1. each of the three terms are prime
!     2. each of the 4-digit numbers are permutations of one another

! There are no arithmetic sequences made up of
! three 1-, 2-, or 3-digit primes, exhibiting this property,
! but there is one other 4-digit increasing sequence.

! What 12-digit number do you form by concatenating
! the three terms in this sequence?

USE: combinators.short-circuit
USE: kernel
USE: math
USE: math.combinatorics
USE: math.functions
USE: math.parser
USE: math.primes
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler49

: digits>number ( ds -- n )
    reverse 0 [ 10^ * + ] reduce-index ;

: special? ( ns -- ? )
    {
        [ [ prime? ] all? ]
        [ [ first ] [ second ] bi = not ]
        [ dup rest [ - ] 2map [ first ] [ second ] bi = ]
    }
    1&& ;

: generate-digit-groups ( -- dss )
    1 9 [a,b]
    2 9 [a,b]
    3 9 [a,b]
    4 9 [a,b]
    cartesian-product concat [ swap prefix ]
    cartesian-map concat [ swap prefix ]
    cartesian-map concat ;

: euler49 ( -- )
    generate-digit-groups
    [ all-permutations [ digits>number ] map 3 all-combinations ] map concat
    [ first 1487 = not ] filter
    [ special? ] find nip
    [ number>string ] map "" join string>number . ;

MAIN: euler49
