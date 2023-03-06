! The Fibonacci sequence is defined by the recurrence relation:
! F(n) = F(n−1) + F(n−2), where F(1) = 1 and F(2) = 1.

! It turns out that F(541), which contains 113 digits, is the
! first Fibonacci number for which the last nine digits are
! 1-9 pandigital (contain all the digits 1 to 9, but not necessarily
! in order). And F(2749), which contains 575 digits, is the first
! Fibonacci number for which the first nine digits are 1-9 pandigital.

! Given that F(k) is the first Fibonacci number for which the first
! nine digits AND the last nine digits are 1-9 pandigital, find k.

USE: combinators.short-circuit
USE: kernel
USE: math
USE: math.functions
USE: math.order
USE: math.parser
USE: prettyprint
USE: sequences
USE: sorting
USE: strings
IN: euler104

: pandigital? ( n -- ? )
    number>string [ <=> ] sort >string "123456789" = ;

: pandigital-tail? ( n -- ? )
    1000000000 mod pandigital? ;

: pandigital-head? ( n -- ? )
    dup log10 >integer 8 - 10^ / >integer pandigital? ;

: pandigital-ends? ( n -- ? )
    { [ 100000000 > ] [ pandigital-tail? ] [ pandigital-head? ] } 1&& ;

! fibonacci multiples-of-9 recurrence relation:
! (every 12th number from the full fibonacci series)
! 0, 144, 46368, 14930352 ...
! f(n) = 322 * f(n - 1) - f(n - 2)

: euler104 ( -- )
    12 0 144
    [ dup pandigital-ends? not ]
    [
        swap over 322 * swap -
        [ 12 + ] 2dip
    ]
    while 2drop . ;

! : fibonacci ( n -- x ) 1 1 [ [ over ] dip swap 0 > ] [ swap over + [ 1 - ] 2dip ] while 2nip ;

MAIN: euler104
