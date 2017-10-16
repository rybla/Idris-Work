isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

--
-- looks like
--    `(x:A) -> ...`
-- is the same as 
--    `(A x) => ...`
--
mkSingle : (x:Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []


sum : (single:Bool) -> isSingleton single -> Nat
sum True x = x
sum False [] = 0
sum False (x::xs) = x + sum False xs