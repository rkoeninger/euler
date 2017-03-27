! The prime factors of 13195 are 5, 7, 13 and 29.
! What is the largest prime factor of the number 600851475143?

USE: io
USE: kernel
USE: math
USE: math.functions
USE: math.ranges
USE: present
USE: sequences
IN: euler3

: take-until-slice ( xs q -- ys )
    dupd find
    over f =
    [ 2drop ]
    [ drop head-slice ]
    if ;
inline

: divisor-any? ( ps n -- ? )
    dup -rot
    sqrt ceiling >integer
    [ > ] curry take-until-slice
    swap [ swap divisor? ] curry any? ;

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

: largest-prime-factor ( ps g cpf -- lpf )
    2dup
    >
    [
        rot dup last 1 + next-prime
        swapd dup last swapd 2dup divisor?
        [ [ drop ] 3dip swap dupd factor-out swap ]
        [ drop rot ]
        if
        largest-prime-factor
    ]
    [ 2nip ]
    if ;
recursive

: euler3 ( -- )
    { 2 } 600851475143 0 largest-prime-factor
    present print ;

MAIN: euler3
