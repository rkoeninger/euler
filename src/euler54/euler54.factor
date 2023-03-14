! In the card game poker, a hand consists of five cards and are ranked,
! from lowest to highest, in the following way:

! High Card: Highest value card.
! One Pair: Two cards of the same value.
! Two Pairs: Two different pairs.
! Three of a Kind: Three cards of the same value.
! Straight: All cards are consecutive values.
! Flush: All cards of the same suit.
! Full House: Three of a kind and a pair.
! Four of a Kind: Four cards of the same value.
! Straight Flush: All cards are consecutive values of same suit.
! Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.

! The cards are valued in the order:
! 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

! If two players have the same ranked hands then the rank made up of
! the highest value wins; for example, a pair of eights beats a pair of fives
! (see example 1 below). But if two ranks tie, for example, both players have
! a pair of queens, then highest cards in each hand are compared (see example 4 below);
! if the highest cards tie then the next highest cards are compared, and so on.

! Consider the following five hands dealt to two players:

! Hand      Player 1              Player 2

! 1      5H 5C 6S 7S KD         2C 3S 8S 8D TD
!         Pair of Fives       Pair of Eights
!                                   Winner

! 2      5D 8C 9S JS AC         2C 5C 7D 8S QH
!       Highest card Ace      Highest card Queen
!           Winner

! 3      2D 9C AS AH AC         3D 6D 7D TD QD
!          Three Aces         Flush with Diamonds
!                                   Winner

! 4      4D 6S 9H QH QC         3D 6D 7H QD QS
!        Pair of Queens         Pair of Queens
!       Highest card Nine      Highest card Seven
!           Winner

! 5       2H 2D 4C 4D 4S        3C 3D 3S 9S 9D
!          Full House             Full House
!        With Three Fours       With Three Threes
!            Winner

! The file "p054_poker.txt" contains one-thousand random hands dealt to two players.
! Each line of the file contains ten cards (separated by a single space): 
! the first five are Player 1's cards and the last five are Player 2's cards. 
! You can assume that all hands are valid (no invalid characters or repeated cards), 
! each player's hand is in no specific order, and in each hand there is a clear winner.

! How many hands does Player 1 win?

USE: arrays
USE: assocs
USE: combinators
USE: combinators.short-circuit
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
USE: splitting.extras
IN: euler54

: of-a-kind-counts ( h -- d )
    [ first ] map histogram values ;

: full-house? ( h -- ? )
    of-a-kind-counts [ 2 swap member? ] [ 3 swap member? ] bi and ;

: pair? ( h -- ? )
    of-a-kind-counts 2 swap member? ;

: 2-pair? ( h -- ? )
    of-a-kind-counts histogram 2 of 2 = ;

: 3-of-a-kind? ( h -- ? )
    of-a-kind-counts 3 swap member? ;

: 4-of-a-kind? ( h -- ? )
    of-a-kind-counts 4 swap member? ;

: straight-aces-high? ( rs -- ? )
    [ first dup 4 + [a,b] ] keep
    [ = ] 2all? ;

: sub-aces-low ( rs -- rs' )
    [| r | r 14 = 1 r ? ] map natural-sort ;

: straight-aces-low? ( rs -- ? )
    sub-aces-low straight-aces-high? ;

: straight? ( h -- ? )
    [ first ] map natural-sort
    { [ straight-aces-high? ] [ straight-aces-low? ] } 1|| ;

: straight-requires-aces-low? ( h -- ? )
    [ first ] map natural-sort
    { [ straight-aces-high? not ] [ straight-aces-low? ] } 1&& ;

: flush? ( h -- ? )
    [ second ] map cardinality 1 = ;

: straight-flush? ( h -- ? )
    { [ straight? ] [ flush? ] } 1&& ;

: royal-flush? ( h -- ? )
    {
        [ straight-flush? ]
        [ [ first 14 = ] any? ]
        [ [ first 10 = ] any? ]
    } 1&& ;

: classify-hand ( h -- n )
    {
        { [ dup royal-flush? ]    [ drop 9 ] }
        { [ dup straight-flush? ] [ drop 8 ] }
        { [ dup 4-of-a-kind? ]    [ drop 7 ] }
        { [ dup full-house? ]     [ drop 6 ] }
        { [ dup flush? ]          [ drop 5 ] }
        { [ dup straight? ]       [ drop 4 ] }
        { [ dup 3-of-a-kind? ]    [ drop 3 ] }
        { [ dup 2-pair? ]         [ drop 2 ] }
        { [ dup pair? ]           [ drop 1 ] }
        [ drop 0 ]
    } cond ;

: sorted-ranks ( h -- rs )
    dup straight-requires-aces-low?
    [ [ first ] map sub-aces-low natural-sort reverse ]
    [ [ first ] map natural-sort reverse ]
    if ;

: compare-ranks ( rs1 rs2 -- ? )
    [ - ] 2map [ 0 = not ] find nip ;

:: player1-wins ( h1 h2 -- ? )
    h1 h2 [ classify-hand ] bi@ -
    {
        { [ dup 0 > ] [ drop t ] }
        { [ dup 0 < ] [ drop f ] }
        [ drop h1 h2 [ sorted-ranks ] bi@ compare-ranks 0 > ]
    } cond ;

: parse-rank ( s -- rank )
    1 head
    {
        { "T" [ 10 ] }
        { "J" [ 11 ] }
        { "Q" [ 12 ] }
        { "K" [ 13 ] }
        { "A" [ 14 ] }
        [ string>number ]
    } case ;

: parse-line ( line -- h1 h2 )
    { 32 } split-harvest
    [ [ parse-rank ] [ 1 tail* ] bi 2array ] map
    [ 5 head ] [ 5 tail* ] bi ;

: euler54 ( -- )
    "./work/euler54/p054_poker.txt" utf8 file-lines
    [ parse-line player1-wins ] count . ;

MAIN: euler54
