USE: math
USE: math.ranges
USE: sequences
USE: locals
USE: present
USE: io
IN: euler3

:: prime? ( n -- b )
    2 n [a,b)
    [ n swap mod 0 = ] any?
    not ;

:: largest-prime-factor ( n -- m )
    2 n [a,b)
    [ prime? ] filter
    [ n swap mod 0 = ] filter
    last ;

: euler3 ( -- )
    600851475143 largest-prime-factor
    present print ;

! This causes the factor listener to crash

MAIN: euler3
