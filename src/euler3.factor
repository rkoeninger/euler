! The prime factors of 13195 are 5, 7, 13 and 29.
! What is the largest prime factor of the number 600851475143?

USE: math
USE: math.ranges
USE: sequences
USE: present
USE: io
IN: euler3

: divisor-any? ( ps n -- ? )
    [ swap divisor? ] curry any? ;

: next-prime ( ps0 n -- ps1 )
    2dup divisor-any?
    [ 1 + next-prime ]
    [ suffix ]
    if ;
recursive

: factor-out ( p x -- y )
    2dup swap
    divisor?
    [ over / factor-out ]
    [ nip ]
    if ;
recursive

: prime? ( n -- ? )
    dup 2 =
    [ drop t ]
    [
        dup
        sqrt ceiling >integer
        2 swap [a,b]
        swap [ swap divisor? ] curry
        any? not
    ]
    if ;

: prime-factors ( n -- xs )
    dup
    2 swap [a,b)
    swap
    [
        [ swap divisor? ] curry
        [ prime? ]
        bi and
    ]
    curry filter ;

: largest-prime-factor ( n -- x )
    prime-factors
    dup empty?
    [ drop -1 ]
    [ last ]
    if ;

! TODO:
! Scan up the list of primes,
! when we discover a new prime,
! If it's larger than the remaining goal,
! the previous prime factor is the answer.
! If not larger,
! factor-out that prime and add it
! to the end of the list of primes.
! If it divided at least once, it is
! the new candidate largest prime factor.

: take-until-slice ( xs q -- ys ) dupd find drop head-slice ; inline

! Use take-until-slice to scan a smaller range of primes to
! check further values for prime-ness (this can also be used in problem 5)
! { 2 3 5 7 9 11 13 17 19 }
! 22 sqrt ceiling >integer [ > ] curry
! take-until-slice >vector .
! => V{ 2 3 5 }

: euler3 ( -- )
    600851475143 largest-prime-factor
    present print ;

! Calling largest-prime-factor on a large value
! causes the factor listener to crash

MAIN: euler3
