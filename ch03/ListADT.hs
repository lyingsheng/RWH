-- file: ch03/ListADT.hs
data List a = Cons a (List a)
            | Nil
              deriving (Show)

-- the belowing function is wrong
--reverseList (Cons a ls) = 
--	if ls /= Nil
--	then a : reverseList ls
--	else a : []

reverseList (Cons x xs) = x : reverseList xs
reverseList Nil			= []