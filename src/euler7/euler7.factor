! If 2 is the 1st prime number, what is the 10001st?

USE: kernel
USE: math
USE: math.primes
USE: prettyprint
IN: euler7

: euler7 ( -- )
    0 0
    [ over 10001 < ]
    [
        1 +
        dup prime?
        [ [ 1 + ] dip ] when
    ]
    while nip . ;

MAIN: euler7
