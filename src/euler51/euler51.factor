! By replacing the 1st digit of the 2-digit number _3,
! it turns out that six of the nine possible values:
! 13, 23, 43, 53, 73, and 83, are all prime.

! By replacing the 3rd and 4th digits of 56__3 with the same digit,
! this 5-digit number is the first example having seven primes among
! the ten generated numbers, yielding the family:
! 56003, 56113, 56333, 56443, 56663, 56773, and 56993.
! Consequently 56003, being the first member of this family,
! is the smallest prime with this property.

! Find the smallest prime which, by replacing part of the number
! (not necessarily adjacent digits) with the same digit,
! is part of a prime value family of size 8.

USE: combinators.short-circuit
USE: kernel
USE: locals
USE: math
USE: math.combinatorics
USE: math.functions
USE: math.primes
USE: math.ranges
USE: memoize
USE: prettyprint
USE: sequences
IN: euler51

MEMO: generate-place-values ( s -- pss )
    [0,b] [ 10^ ] map all-subsets rest but-last ;

: number-scale ( n -- s )
    log10 floor >integer ; inline

: all-equal? ( xs -- ? )
    dup first [ = ] curry all? ; inline

:: digits-equal@ ( ps x -- ? )
    {
        [ ps length 1 = ]
        [ ps [| p | x p /i 10 mod ] map all-equal? ]
    } 0|| ;

:: replace-digit ( x p d -- n )
    x
    x p /i 10 mod p *
    -
    d p * + ;

:: replace-digits ( d ps x -- n )
    ps x [ d replace-digit ] reduce ;

:: family-size@ ( ps x -- n )
    9
    x number-scale 10^ ps last =
    [ [1,b] ]
    [ [0,b] ]
    if
    [ ps x replace-digits prime? ] count ;

:: family-size ( x -- n )
    x number-scale generate-place-values
    [ x digits-equal@ ] filter
    [ x family-size@ ] map supremum ;

: euler51 ( -- )
    56993
    [ dup family-size 8 < ]
    [ next-prime ]
    while . ;

MAIN: euler51
