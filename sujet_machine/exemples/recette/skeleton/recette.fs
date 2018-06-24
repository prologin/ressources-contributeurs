VARIABLE buffer-index
1000 buffer-index !
VARIABLE NEOF
1 NEOF !
VARIABLE buffer-max
0 buffer-max !
create bufferc 128 allot
: next-char
  buffer-index @ 1 + buffer-index !
  buffer-index @ buffer-max @ > IF
    0 buffer-index !
    bufferc 128 stdin read-line DROP -1 = NEOF ! buffer-max !
    10 bufferc buffer-max @ + !
  THEN ;
: current-char
  buffer-index @ buffer-max @ > IF next-char THEN
  bufferc buffer-index @ + c@ ;
: skipspaces
  BEGIN NEOF @ current-char 13 = current-char 32 = OR current-char 10 = OR AND
  WHILE next-char REPEAT ;
: read-int
  [char] - current-char = IF -1 next-char ELSE 1 THEN
  0 BEGIN current-char [char] 0 >= current-char [char] 9 <= AND
  WHILE 10 * current-char [char] 0 - + next-char REPEAT * ;
: recette0 { n ordre desordre }
  \  Inserez votre code ici 
  
;

: main
  read-int { n }
  skipspaces
  HERE n cells allot { ordre }
  n 1 - 0 BEGIN 2dup >= WHILE DUP { p }
    read-int ordre  p cells +  !
    skipspaces
   1 + REPEAT 2DROP
  HERE n cells allot { desordre }
  n 1 - 0 BEGIN 2dup >= WHILE DUP { q }
    read-int desordre  q cells +  !
    skipspaces
   1 + REPEAT 2DROP
  n ordre desordre recette0
  ;
main
BYE

