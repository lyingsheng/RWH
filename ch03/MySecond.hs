-- mySecond using error
--mySecond xs = if null (tail xs)
--              then error "list too short"
--              else head (tail xs)

-- safeSecond using Maybe
--safeSecond :: [a] -> Maybe a

--safeSecond [] = Nothing
--safeSecond xs = if null (tail xs)
--				then Nothing
--				else Just (head (tail xs))

--safeSecond [] = Nothing
--safeSecond (x:[]) = Nothing
--safeSecond xs = Just (head (tail xs))

--safeSecond xs	=	if null xs || null (tail xs)
--					then Nothing
--					else Just (head (tail xs))

tidySecond (_:x:_)	= Just x
tidySecond _		= Nothing