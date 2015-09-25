module boolTest

import pair
import bool
import nat

p1: bool
p1 = andp (mkPair true true)

p2: bool
p2 = andp (mkPair true false)

p3: bool
p3 = andp (mkPair false false)

q1: bool
q1 = orp (mkPair true true)

q2: bool
q2 = orp (mkPair true false)

q3: bool
q3 = orp (mkPair false false)

r1: bool
r1 = nandp (mkPair true true)

r2: bool
r2 = nandp (mkPair true false)

r3: bool
r3 = nandp (mkPair false false)

y1: bool
y1 = xorp (mkPair true true)

y2: bool
y2 = xorp (mkPair true false)

y3: bool
y3 = xorp (mkPair false false)
