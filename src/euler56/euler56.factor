! A googol (10^100) is a massive number: one followed by
! one-hundred zeros; 100^100 is almost unimaginably large:
! one followed by two-hundred zeros. Despite their size,
! the sum of the digits in each number is only 1.

! Considering natural numbers of the form, ab, where
! a, b < 100, what is the maximum digital sum?

USE: kernel
USE: math.functions
USE: math.parser
USE: math.ranges
USE: prettyprint
USE: sequences
IN: euler56

: euler56 ( -- )
    100 [1,b) dup
    [ ^ number>string string>digits sum ] cartesian-map concat
    supremum . ;

MAIN: euler56
