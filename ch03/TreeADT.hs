-- Tree with 2 constructors
--data Tree t = Node t (Tree t) (Tree t)
--			| Empty
--			deriving (Show)

-- Tree with only one constructor

data Tree a = T a (Tree (Maybe a)) (Tree (Maybe a))
	deriving (Show)