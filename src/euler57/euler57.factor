! It is possible to show that the square root of two can
! be expressed as an infinite continued fraction.

! √ 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...

! By expanding this for the first four iterations, we get:

! 1 + 1/2 = 3/2 = 1.5
! 1 + 1/(2 + 1/2) = 7/5 = 1.4
! 1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
! 1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...

! The next three expansions are 99/70, 239/169, and 577/408,
! but the eighth expansion, 1393/985, is the first example where
! the number of digits in the numerator exceeds the number of
! digits in the denominator.

! In the first one-thousand expansions, how many fractions
! contain a numerator with more digits than denominator?

USE: kernel
USE: math
USE: math.functions
USE: math.parser
USE: prettyprint
USE: sequences
IN: euler57

: numerator-greater? ( a/b -- ? )
    >fraction [ number>string length ] bi@ > ;

: euler57 ( -- )
    0 2 recip
    [ over 1000 < ] [ [ 1 + ] [ 2 + recip ] bi* dup 1 + ] produce 2nip
    [ numerator-greater? ] count . ;

MAIN: euler57
