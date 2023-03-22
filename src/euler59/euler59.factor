! A modern encryption method is to take a text file, convert the bytes to
! ASCII, then XOR each byte with a given value, taken from a secret key.
! The advantage with the XOR function is that using the same encryption key
! on the cipher text, restores the plain text; for example, 65 XOR 42 = 107,
! then 107 XOR 42 = 65.

! A password is used as the key. If the password is shorter than the
! message, which is likely, the key is repeated cyclically throughout the
! message. The balance for this method is using a sufficiently long password
! key for security, but short enough to be memorable.

! Your task has been made easy, as the encryption key consists of three lower
! case characters. Using "p059_cipher.txt", a file containing the encrypted
! ASCII codes, and the knowledge that the plain text must contain common
! English words, decrypt the message and find the sum of the ASCII values
! in the original text.

USE: csv
USE: io.encodings.utf8
USE: kernel
USE: math
USE: math.parser
USE: math.ranges
USE: memoize
USE: sequences
USE: sequences.repeating
USE: sets
USE: unicode
IN: euler59

MEMO: encrypted-bytes ( -- bytes )
    "./work/euler59/p059_cipher.txt" utf8 file>csv concat
    [ string>number ] map ;

MEMO: english-words ( -- words )
    "./work/euler59/p059_words.txt" utf8 file>csv concat fast-set ;

: 3cartesian-product ( xs ys zs -- xyzs )
    cartesian-product concat swap [ prefix ] cartesian-map concat ;

: decrypt ( key -- bytes' )
    encrypted-bytes length cycle
    encrypted-bytes [ bitxor ] 2map ;

: english-count ( bytes -- n )
    >words [ >upper english-words in? ] count ;

: euler59 ( -- )
    CHAR: a CHAR: z [a,b] dup dup 3cartesian-product
    [ decrypt english-count ] supremum-by
    decrypt sum . ;

MAIN: euler59
