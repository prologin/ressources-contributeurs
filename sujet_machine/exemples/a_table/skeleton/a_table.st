Object subclass: a_table [
  |buffer|
  read_int [|o|
    ((buffer isNil) | ((buffer size) = 0)) ifTrue: [ buffer := FileStream stdin nextLine. ].
     o := 0.
    (buffer isNil) ifFalse:[
    (buffer =~ '^(-?\d+)' asRegex) ifMatched: [:match |
    o := match at: 1.
    buffer := buffer allButFirst:(o size).
    ].
    ^o asInteger. ]
  ]
  skip [
     ((buffer isNil) | ((buffer size) = 0)) ifTrue: [ buffer := FileStream stdin nextLine. ].
    (buffer isNil) ifFalse:[
    (buffer =~ '^(\s+)') ifMatched: [:match | buffer := buffer allButFirst:((match at: 1) size).].
    ]
  ]
  read_char [|o|
     ((buffer isNil) | ((buffer size) = 0)) ifTrue: [ buffer := FileStream stdin nextLine. ].
    (buffer isNil) ifFalse:[
    o := buffer at: 1.
    buffer := buffer allButFirst:1.
    ^o.
    ]
  ]
   a_table0: n m: m salle: salle [
    " Inserez votre code ici "
  ]
  main [
    |salle n m dk di|n := self read_int.
    self skip.
    m := self read_int.
    self skip.
    di := Array new: n.
    (0 to: (n - 1)) do: [:dj|
      dk := Array new: m.
      (0 to: (m - 1)) do: [:dl| dk at: (dl + 1) put: self read_char.].
      self skip.
      di at: (dj + 1) put: dk.
    ].
    salle := di.
    (self a_table0:n m:m salle:salle).
    ]
]
Eval [ (a_table new) main. ]

