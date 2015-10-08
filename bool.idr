module bool

import pair

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

|||Given a pair of bool values, (a,b), return true if both a and b are true, otherwise return false.
and: bool ->  bool -> bool
and true true = true
and _ _ = false

|||Given a pair of bool values (a,b), return false if both a and b are false, otherwise return true
or: bool -> bool -> bool
or false false = false
or _ _ = true

|||Short for 'not and', given a pair of bool values, return false if both are true and true otherwise.
nand: bool -> bool -> bool
nand a b = not (and a b)

||| short for 'exclusive or' given a pair of bool values return true if exactly one is true and false otherwise.
xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _  = false
