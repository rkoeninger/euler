! The prime factors of 13195 are 5, 7, 13 and 29.
! What is the largest prime factor of the number 600851475143?

USE: math
USE: math.functions
USE: math.ranges
USE: sequences
USE: present
USE: io
IN: euler3

! TODO: find puts a two `f` on top of the stack when element not found
!       handle this by taking the entire sequence

: take-until-slice ( xs q -- ys )
    dupd find
    drop head-slice ;
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
        [ drop ]
        if
        rot largest-prime-factor
    ]
    [ 2nip ]
    if ;
recursive

: euler3 ( -- )
    { 2 } 600851475143 0 largest-prime-factor
    present print ;

MAIN: euler3
