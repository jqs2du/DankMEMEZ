module listTest

import list

t1: Nat
t1 = length nil {a = Nat}

t2: Nat
t2 = list.length (cons 2 (cons 4 nil))

t3: list Nat
t3 = append (cons 5 nil)  (cons 4 (cons 3 (cons 2 (cons 1 nil))))
