
module nat

import pair
import bool

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = addp (mkPair n (S m))

-- HOMEWORK 12 -- Use the REPL to verify that these tests return the
-- expected results

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))

-- Homework for September 22, 2015

--Problem #1

||| given a pair of natural numbers give their product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair (multp (mkPair m n)) m)

--problem # 2
factp: nat -> nat
factp O = (S O)
factp (S n) = multp (mkPair (S n) (factp n))

--Homework for Friday 9/25/2015
{-note* the case 0^0 is undefined. There is no way to represent 
"undefined" since I have coded the function as type "pair nat nat -> 
nat". For now it will unify with the first rule of the function and 
return (S O) or 1. I have made this a test case called b2. -}

exp: pair nat nat -> nat
exp (mkPair m O) = (S O)
exp (mkPair m (S n)) = multp (mkPair m (exp (mkPair m n)))

lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair m O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)
eqp (mkPair _ _) = false

gtp: pair nat nat -> bool
gtp (mkPair m n) = not (lep (mkPair (S m) (S n)))

gep: pair nat nat -> bool
gep (mkPair m n) = orp (mkPair (gtp (mkPair m n)) (eqp (mkPair m n)))

ltp: pair nat nat -> bool
ltp (mkPair n m) = not (gep (mkPair n m))


|||Given a natural number n, the fib function returns the nth term of the fibonocci sequence.
fib: nat -> nat
fib O = (S O)
fib (S O) = (S O)
fib (S n) = addp (mkPair (fib n) (fib (pred n)))

{- Some test cases for fib-}

f1: nat
f1 = fib (S (S (S (S (S O)))))

f2: nat
f2 = fib (S (S (S O)))
