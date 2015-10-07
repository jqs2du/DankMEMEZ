
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
add: nat -> nat -> nat
add O m = m
add (S n) m = add n (S m)

||| given a pair of natural numbers give their product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult m n) m

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

exp: nat -> nat -> nat
exp m O = (S O)
exp m (S n) = mult m (exp m n)

le: nat -> nat -> bool
le O m = true
le m O = false
le (S n) (S m) = le n m

eq: nat -> nat -> bool
eq O O = true
eq (S n) (S m) = eq n m
eq _ _ = false

gt: nat -> nat -> bool
gt m n = not (le (S m) (S n))

ge: nat -> nat -> bool
ge m n = or (gt  m n) (eq m n)

lt: nat -> nat -> bool
lt n m = not (ge n m)


|||Given a natural number n, the fib function returns the nth term of the fibonocci sequence.
fib: nat -> nat
fib O = (S O)
fib (S O) = (S O)
fib (S n) = add (fib n) (fib (pred n))
