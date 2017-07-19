! 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

! Find the sum of all numbers which are equal to the sum of the factorial of their digits.

! Note: as 1! = 1 and 2! = 2 are not sums they are not included.

USE: kernel
USE: math
USE: math.parser
USE: math.ranges
USE: present
USE: prettyprint
USE: sequences
IN: euler34

: number>digits ( n -- ds )
    present [ digit> ] map ;

: factorial ( n -- n! )
    { 1 1 2 6 24 120 720 5040 40320 362880 } nth ;

: digit-factorial ( n -- ? )
    dup number>digits
    [ factorial ] map
    sum = ;

: euler34 ( -- )
    10 100000 [a,b]
    [ digit-factorial ] filter
    sum . ;

MAIN: euler34
