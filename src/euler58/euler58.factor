! Starting with 1 and spiralling anticlockwise in the following
! way, a square spiral with side length 7 is formed.
!                      57
! 37 36 35 34 33 32 31 56
! 38 17 16 15 14 13 30 55
! 39 18  5  4  3 12 29 54
! 40 19  6  1  2 11 28 53
! 41 20  7  8  9 10 27 52
! 42 21 22 23 24 25 26 51
! 43 44 45 46 47 48 49 50

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

: euler58 ( -- )
    0 0
    [ 2dup 4 * 1 + / 0.1 < ]
    [| prime-count n |
        n sq 4 * n 2 * - 1 +
        dup n 2 * +
        dup n 2 * +
        dup n 2 * +
        4array [ prime? ] count
        prime-count +
        n 1 +
    ]
    while
    nip 2 * 1 + . ;

MAIN: euler58
