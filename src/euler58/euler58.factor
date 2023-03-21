! Starting with 1 and spiralling anticlockwise in the following
! way, a square spiral with side length 7 is formed.

! 37 36 35 34 33 32 31
! 38 17 16 15 14 13 30
! 39 18  5  4  3 12 29
! 40 19  6  1  2 11 28
! 41 20  7  8  9 10 27
! 42 21 22 23 24 25 26
! 43 44 45 46 47 48 49

! Note that 8 out of the 13 numbers lying along both diagonals are prime;
! with a ratio of 8/13 ≈ 62%.

! If one complete new layer is wrapped around the spiral above,
! a square spiral with side length 9 will be formed.
! If this process is continued, what is the side length of the square spiral
! for which the ratio of primes along both diagonals first falls below 10%?

USE: kernel
USE: locals
USE: math
USE: math.primes
USE: prettyprint
IN: euler58

:: corner-numbers ( n -- ns )
    n sq 4 * n 2 * - 1 +
    dup n 2 * +
    dup n 2 * +
    dup n 2 * +
    4array ;

: euler58 ( -- )
    3 1
    [ 2dup 4 * 1 + / 0.1 >= ]
    [| prime-count n |
        n 1 + corner-numbers [ prime? ] count prime-count +
        n 1 +
    ]
    while
    nip 2 * 1 + . ;

MAIN: euler58
