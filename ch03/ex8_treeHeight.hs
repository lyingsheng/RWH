data Tree t = Node t (Tree t) (Tree t)
              | Empty
              deriving (Show)
                       
treeHeight :: (Ord a, Num a) => Tree t -> a
treeHeight root = case root
                  of Empty -> 0
                     Node t lchild rchild -> 1 + max (treeHeight lchild) (treeHeight rchild)
