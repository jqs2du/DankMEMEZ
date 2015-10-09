module list

data list a = nil | cons (a) (list a)

length: list a -> Nat
length nil = 0
length (cons n L) = 1 + length L

append: list a -> list a -> list a
append nil L = L
append (cons n L) (k) = cons (n) (append L k)
