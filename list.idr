module list

data list = nil | cons Nat list

length: list -> Nat
length nil = 0
length (cons (n) (cons m L)) =(S (length (cons m L)))

append: list -> list -> list
append nil L = L
append (cons n L) (k) = cons (n) (append L k)
