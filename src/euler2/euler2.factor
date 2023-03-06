! Each new term in the Fibonacci sequence is generated by adding the previous two terms.
! By starting with 1 and 2, the first 10 terms will be:
! 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
! By considering the terms in the Fibonacci sequence whose values do not exceed four million,
! find the sum of the even-valued terms.

USE: kernel
USE: math
USE: prettyprint
IN: euler2

! fibonacci even-numbers recurrence relation:
! (every 3rd number from the full fibonacci series)
! 0, 2, 8, 34, 144 ...
! f(n) = 4 * f(n - 1) + f(n - 2)

: euler2 ( -- )
    0 0 2
    [ dup 4000000 < ]
    [
        rot over + -rot
        swap over 4 * +
    ]
    while 2drop . ;

MAIN: euler2
