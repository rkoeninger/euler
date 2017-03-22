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

: euler3 ( -- )
    600851475143 largest-prime-factor
    present print ;

! Calling largest-prime-factor on a large value
! causes the factor listener to crash

MAIN: euler3
