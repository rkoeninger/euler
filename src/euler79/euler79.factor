! A common security method used for online banking is to ask the user
! for three random characters from a passcode. For example, if the
! passcode was 531278, they may ask for the 2nd, 3rd, and 5th characters;
! the expected reply would be: 317.

! Given that the three characters are always asked for in order, analyse
! the file so as to determine the shortest possible secret passcode of
! unknown length.

USE: io
USE: io.encodings.utf8
USE: io.files
USE: kernel
USE: locals
USE: math
USE: memoize
USE: sequences
USE: sets
USE: splitting
IN: euler79

MEMO: keylog ( -- codes )
    "./work/euler79/keylog.txt" utf8 file-lines ;

:: reorder ( code x y -- )
    code [ x = ] find drop
    code [ y = ] find drop
    2dup >
    [ code exchange ]
    [ 2drop ]
    if ;

: euler79 ( -- )
    keylog dup concat members swap
    [
        [ dupd [ first ] [ second ] bi reorder ]
        [ dupd [ second ] [ third ] bi reorder ]
        bi
    ]
    each print ;

MAIN: euler79
