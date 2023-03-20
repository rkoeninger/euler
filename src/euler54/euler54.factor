! How many hands in "p054_poker.txt" does Player 1 win?

USE: accessors
USE: arrays
USE: assocs
USE: combinators
USE: combinators.short-circuit
USE: grouping
USE: grouping.extras
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
USE: sequences.extras
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
    [ [ second ] map all-equal? ]
    tri hand boa ;

: aces-low ( ranks -- ranks' )
    { 14 } { 1 } replace natural-sort reverse ;

: desc-series? ( seq -- ? )
    [ 1 + = ] monotonic? ;

: sort-groups-desc ( alist -- seq )
    [ second ] map-sort reverse
    [ second ] group-by
    [ second [ first ] map natural-sort reverse ] map-concat ;

: ?straight-flush ( hand -- graded )
    {
        [ [ single-suit>> ] [ ranks>> desc-series? ] bi and ]
        [ ranks>> 8 graded boa ]
    } 1&& ;

: ?straight-flush-aces-low ( hand -- graded )
    {
        [ [ single-suit>> ] [ ranks>> aces-low desc-series? ] bi and ]
        [ ranks>> aces-low 8 graded boa ]
    } 1&& ;

: ?4-of-a-kind ( hand -- graded )
    {
        [ hist>> 4 swap value? ]
        [ hist>> sort-groups-desc 7 graded boa ]
    } 1&& ;

: ?full-house ( hand -- graded )
    {
        [| h | { 3 2 } [ h hist>> value? ] all? ]
        [ hist>> sort-groups-desc 6 graded boa ]
    } 1&& ;

: ?flush ( hand -- graded )
    { [ single-suit>> ] [ ranks>> 5 graded boa ] } 1&& ;

: ?straight ( hand -- graded )
    { [ ranks>> desc-series? ] [ ranks>> 4 graded boa ] } 1&& ;

: ?straight-aces-low ( hand -- graded )
    {
        [ ranks>> aces-low desc-series? ]
        [ ranks>> aces-low 4 graded boa ]
    } 1&& ;

: ?3-of-a-kind ( hand -- graded )
    {
        [ hist>> 3 swap value? ]
        [ hist>> sort-groups-desc 3 graded boa ]
    } 1&& ;

: ?2-pair ( hand -- graded )
    {
        [ hist>> values histogram 2 of 2 = ]
        [ hist>> sort-groups-desc 2 graded boa ]
    } 1&& ;

: ?1-pair ( hand -- graded )
    {
        [ hist>> 2 swap value? ]
        [ hist>> sort-groups-desc 1 graded boa ]
    } 1&& ;

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

: compare-ranks ( h1 h2 -- n )
    [ ranks>> ] bi@
    [ - ] 2map
    [ 0 = not ] find nip
    dup 0 ? ;

: compare-hands ( h1 h2 -- n )
    2dup [ grade>> ] bi@ -
    [ compare-ranks ]
    [ 2nip ]
    if-zero ;

CONSTANT: rank-letters { CHAR: T CHAR: J CHAR: Q CHAR: K CHAR: A }

: parse-rank ( rs -- rank )
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
    [ parse-line [ grade-hand ] bi@ compare-hands 0 > ] count . ;

MAIN: euler54
