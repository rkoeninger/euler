! How many hands in "p054_poker.txt" does Player 1 win?

USE: arrays
USE: assocs
USE: combinators
USE: combinators.short-circuit
USE: grouping
USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: locals
USE: math
USE: math.parser
USE: math.ranges
USE: math.statistics
USE: prettyprint
USE: sequences
USE: sets
USE: sorting
USE: sorting.extras
USE: splitting
USE: splitting.extras
USE: unicode
IN: euler54

TUPLE: hand ranks hist single-suit ;
TUPLE: graded ranks grade ;

: <hand> ( cards -- hand )
    [ [ first ] map natural-sort reverse ]
    [ [ first ] map histogram >alist [ first ] map-sort reverse ]
    [ [ second ] map cardinality 1 = ]
    tri hand boa ;

: desc-series? ( seq -- ? )
    2 clump [ [ first ] [ second ] bi - 1 = ] all? ;

: ?grade ( pred make -- result )
    [ graded boa ] compose 2array 1&& ; inline

: ?straight-flush ( hand -- graded )
    [ [ single-suit>> ] [ ranks>> desc-series? ] bi and ]
    [ ranks>> 8 ]
    ?grade ;

: ?straight-flush-aces-low ( hand -- graded )
    ! TODO: { 14 } { 1 } replace natural-sort reverse
    [ [ single-suit>> ] [ ranks>> desc-series? ] bi and ]
    [ ranks>> 8 ]
    ?grade ;

: ?4-of-a-kind ( hand -- graded )
    [ hist>> 4 swap value? ]
    [| h | { 4 1 } [ h hist>> value-at ] map 7 ]
    ?grade ;

: ?full-house ( hand -- graded )
    [| h | { 3 2 } [ h hist>> value? ] all? ]
    [| h | { 3 2 } [ h hist>> value-at ] map 6 ]
    ?grade ;

: ?flush ( hand -- graded )
    [ single-suit>> ] [ ranks>> 5 ] ?grade ;

: ?straight ( hand -- graded )
    [ ranks>> desc-series? ] [ ranks>> 4 ] ?grade ;

: ?straight-aces-low ( hand -- graded )
    ! TODO: { 14 } { 1 } replace natural-sort reverse
    [ ranks>> desc-series? ] [ ranks>> 4 ] ?grade ;

: ?3-of-a-kind ( hand -- graded )
    [ hist>> 3 swap value? ]
    [| h |
        [let 3 h hist>> value-at :> lead-rank
            lead-rank h ranks>> remove
            lead-rank
            prefix
            3
        ]
    ]
    ?grade ;

: ?2-pair ( hand -- graded )
    [ hist>> values histogram 2 of 2 = ]
    [| h |
        h hist>> [ second 2 = ] filter [ first ] map natural-sort reverse
        1 h hist>> value-at
        suffix
        2
    ]
    ?grade ;

: ?1-pair ( hand -- graded )
    [ hist>> 2 swap value? ]
    [| h |
        [let 2 h hist>> value-at :> lead-rank
            lead-rank h ranks>> remove
            lead-rank
            prefix
            1
        ]
    ]
    ?grade ;

: high-card ( hand -- graded )
    ranks>> 0 graded boa ;

: grade-hand ( hand -- graded )
    {
        [ ?straight-flush ]
        [ ?straight-flush-aces-low ]
        [ ?4-of-a-kind ]
        [ ?full-house ]
        [ ?flush ]
        [ ?straight ]
        [ ?straight-aces-low ]
        [ ?3-of-a-kind ]
        [ ?2-pair ]
        [ ?1-pair ]
        [ high-card ]
    } 1|| ;

: compare-ranks ( h1 h2 -- ? )
    [ ranks>> ] bi@
    [ - ] 2map
    [ 0 = not ] find nip
    dup 0 ? ;

: player1-wins? ( h1 h2 -- ? )
    2dup [ grade>> ] bi@ - sgn
    {
        { 1  [ 2drop t ] }
        { -1 [ 2drop f ] }
        [ compare-ranks 0 > ]
    } case ;

CONSTANT: rank-letters { CHAR: T CHAR: J CHAR: Q CHAR: K CHAR: A }

: parse-rank ( s -- rank )
    first dup digit?
    [ digit> ]
    [ rank-letters index 10 + ]
    if ;

: parse-line ( line -- h1 h2 )
    { 32 } split-harvest
    [ [ parse-rank ] [ 1 tail* ] bi 2array ] map
    [ 5 head ] [ 5 tail* ] bi
    [ <hand> ] bi@ ;

: euler54 ( -- )
    "./work/euler54/p054_poker.txt" utf8 file-lines
    [ parse-line [ grade-hand ] bi@ player1-wins? ] count . ;

MAIN: euler54
