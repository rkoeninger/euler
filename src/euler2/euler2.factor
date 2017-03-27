! Each new term in the Fibonacci sequence is generated by adding the previous two terms.
! By starting with 1 and 2, the first 10 terms will be:
! 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
! By considering the terms in the Fibonacci sequence whose values do not exceed four million,
! find the sum of the even-valued terms.

USE: kernel
USE: io
USE: math
USE: math.functions
USE: math.ranges
USE: present
USE: sequences
IN: euler2

: euler2 ( -- )
    { 0 1 }
    [ dup last 4000000 < ]
    [ dup 2 tail* sum suffix ]
    while
    [ [ 4000000 < ] [ even? ] bi and ] filter
    sum
    present print ;

MAIN: euler2
