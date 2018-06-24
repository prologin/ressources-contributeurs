Object subclass: recette [
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
   recette0: n ordre: ordre desordre: desordre [
    " Inserez votre code ici "
  ]
  main [
    |ordre n desordre|n := self read_int.
    self skip.
    ordre := Array new: n.
    (0 to: (n - 1)) do: [:bj| ordre at: (bj + 1) put: self read_int.
      self skip.].
    desordre := Array new: n.
    (0 to: (n - 1)) do: [:bk| desordre at: (bk + 1) put: self read_int.
      self skip.].
    (self recette0:n ordre:ordre desordre:desordre).
    ]
]
Eval [ (recette new) main. ]

