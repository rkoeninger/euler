! The Fibonacci sequence is defined by the recurrence relation:
! F(n) = F(n−1) + F(n−2), where F(1) = 1 and F(2) = 1.

! It turns out that F(541), which contains 113 digits, is the
! first Fibonacci number for which the last nine digits are
! 1-9 pandigital (contain all the digits 1 to 9, but not necessarily
! in order). And F(2749), which contains 575 digits, is the first
! Fibonacci number for which the first nine digits are 1-9 pandigital.

! Given that F(k) is the first Fibonacci number for which the first
! nine digits AND the last nine digits are 1-9 pandigital, find k.

USE: kernel
USE: math
USE: math.constants
USE: math.functions
USE: math.order
USE: math.parser
USE: prettyprint
USE: sequences
USE: sorting
USE: strings
IN: euler104

: pandigital? ( s -- ? )
    [ <=> ] sort >string "123456789" = ;

: pandigital-ends? ( n -- ? )
    number>string
    [ 9 head pandigital? ]
    [ 9 tail pandigital? ]
    bi and ;

: fibonacci ( k -- n )
    phi swap ^ 5 sqrt / round >integer ; ! ^ function is returning 1/0 when phi is raised to high powers

: euler104 ( -- )
    2750
    [ dup fibonacci pandigital-ends? not ]
    [ 1 + ]
    while  . ;

MAIN: euler104
