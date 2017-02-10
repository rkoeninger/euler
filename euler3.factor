USE: math
USE: math.ranges
USE: sequences
USE: locals
USE: present
USE: io
IN: euler3

:: prime? ( n -- b )
    2 n sqrt ceiling >integer [a,b]
    [ n swap divisor? ] filter
    any? not ;

:: prime-factors ( n -- xs )
    2 n [a,b)
    [ n swap divisor? ] filter ;

: largest-prime-factor ( n -- x )
    prime-factors
    dup empty?
    [ last ]
    [ drop -1 ]
    if ;

: euler3 ( -- )
    600851475143 largest-prime-factor
    present print ;

! Calling largest-prime-factor on a large value
! causes the factor listener to crash

MAIN: euler3
