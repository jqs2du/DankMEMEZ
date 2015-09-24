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
andp: pair bool bool -> bool
andp (mkPair true true) = true
andp _ = false

|||Given a pair of bool values (a,b), return false if both a and b are false, otherwise return true
orp: pair bool bool -> bool
orp (mkPair false false) = false
orp _ =true

|||Short for 'not and', given a pair of bool values, return false if both are true and true otherwise.
nandp: pair bool bool -> bool
nandp (mkPair a b) = not (andp (mkPair a b))

||| short for 'exclusive or' given a pair of bool values return true if exactly one is true and false otherwise.
xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp _ = false
