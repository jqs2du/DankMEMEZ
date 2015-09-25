module natTest

import pair
import bool
import nat

{-
Here are some examples of some objects (named values) of type nat.
-}

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
w: nat
w = S (S O)

-- three
l: nat
l = S w

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.

-- four
q: nat
q = S l

-- five
v: nat
v = (S (S (S (S (S O)))))

-- HOMEWORK #7 Bind x to the result of applying isZero to r. Add your
-- code below this comment.

x: bool
x = isZero l

-- HOMEWORK #8 Bind y to the result of applying succ to O. Add code here.

y: nat
y = succ O

-- HOMEWORK #9 Bind a, b, c, d, e respectively to the results of
-- applying evenb to O, (S O), (S (S O)) r, and (S r),
-- respectively. Add your code here.

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb l

e: bool
e = evenb (S l)

--Homework test cases for Friday 9/25/2015

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

b1: nat
b1 = exp (mkPair v O)

b2: nat
b2 = exp (mkPair O O)

b3: nat
b3 = exp (mkPair v q)

c1: bool
c1 = lep (mkPair O v)

c2: bool
c2 = lep (mkPair v O)

c3: bool
c3 = lep (mkPair v v)

c4: bool
c4 = lep (mkPair v o)

c5: bool
c5 = lep (mkPair o v)

d1: bool
d1 = eqp (mkPair v o)

d2: bool
d2 = eqp (mkPair o v)

d3: bool
d3 = eqp (mkPair v v)

e1: bool
e1 = gtp (mkPair O v)

e2: bool
e2 = gtp (mkPair v O)

e3: bool
e3 = gtp (mkPair v o)

e4: bool
e4 = gtp (mkPair o v)

e5: bool
e5 = gtp (mkPair v v)

f1: bool
f1 = gep (mkPair O v)

f2: bool
f2 = gep (mkPair v O)

f3: bool
f3 = gep (mkPair v o)

f4: bool
f4 = gep (mkPair o v)

f5: bool
f5 = gep (mkPair v v)

g1: bool
g1 = ltp (mkPair O v)

g2: bool
g2 = ltp (mkPair v O)

g3: bool
g3 = ltp (mkPair v o)

g4: bool
g4 = ltp (mkPair o v)

g5: bool
g5 = ltp (mkPair v v)
