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
b1 = exp
