module gunrow

import list

data Gunrow = mkGunrow country Nat Nat Nat Nat
data country = Argentina | Austria | Australia | Honduras | US | Glorbax

F1: list Gunrow
F1 = (cons (mkGunrow Argentina 580 2012 190 279) (cons (mkGunrow Australia 86 2011 11 62) (cons (mkGunrow Austria 295 404 18 268) (cons (mkGunrow Honduras 6480 404 6480 404) (cons (mkGunrow US 1064 2013 355 670) nil)))))


F2: list Gunrow
F2 = (cons (mkGunrow Glorbax 12 12 12 12) nil)

F3: list Gunrow
F3 = cons (mkGunrow Argentina 13 13 13 13) (cons (mkGunrow Austria 14 14 14 14) nil)
